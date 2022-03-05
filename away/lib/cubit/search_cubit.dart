import 'dart:async';

import 'package:away/data/repositories/property_repository.dart';
import 'package:away/di/locator.dart';
import 'package:away/generated/property_service.pb.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(SearchInitial());

  // Autocomplete related
  StreamController<LocationSearchRequest>?
      _locationSearchRequestStreamController;
  Stream<LocationSearchRequest>? _locationSearchRequestStream;
  bool _locationSearchRemoteWasAlreadyCalled = false;

  void autocompletePlaces(String? query, String? placeId) async {
    if (_locationSearchRequestStream == null) {
      _locationSearchRequestStreamController =
          StreamController<LocationSearchRequest>();
      _locationSearchRequestStream =
          _locationSearchRequestStreamController!.stream;
    }
    // If remote was already called, only add to stream; otherwise call
    // then add to stream; avoids creating multiple remote calls
    if (!_locationSearchRemoteWasAlreadyCalled) {
      _locationSearchRemoteWasAlreadyCalled = true;
      getIt<PropertyRepository>().performQuery(_locationSearchRequestStream!,
          (LocationDetails a) {
        // Result tap callback
        print(a.placeID);
        emit(SearchRequestTapSuccess(a));
      });
    }
    if (query != null && placeId == null) {
      // Autocomplete call
      _locationSearchRequestStreamController!.add(LocationSearchRequest(
          query: LocationAutocompleteQuery(text: query, countryCode: "na")));
      // emit to cause list rebuild
      emit(SearchLocationRequest(query));
    } else if (query == null && placeId != null) {
      // Details call
      _locationSearchRequestStreamController!.add(LocationSearchRequest(
          details: LocationDetailsQuery(placeID: placeId)));
      emit(SearchRequestTapLoading());
    }
  }

  void closeStreamsa() {
    // Autocomplete related
    _locationSearchRequestStreamController?.close();
    _locationSearchRequestStream = null;
    _locationSearchRemoteWasAlreadyCalled = false;
  }
}
