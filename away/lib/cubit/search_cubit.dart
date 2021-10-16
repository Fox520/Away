import 'dart:async';

import 'package:away/data/repositories/property_repository.dart';
import 'package:away/data/repositories/user_repository.dart';
import 'package:away/di/locator.dart';
import 'package:away/generated/property_service.pb.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(SearchInitial());

  StreamController<LocationSearchRequest>? _streamController;
  Stream<LocationSearchRequest>? _locationSearchRequestStream;
  bool _remoteWasAlreadyCalled = false;

  void autocompletePlaces(String? query, String? placeId) async {
    if (_locationSearchRequestStream == null) {
      _streamController = StreamController<LocationSearchRequest>();
      _locationSearchRequestStream = _streamController!.stream;
    }
    // If remote was already called, only add to stream
    // otherwise call then add to stream
    if (!_remoteWasAlreadyCalled) {
      _remoteWasAlreadyCalled = true;
      getIt<PropertyRepository>().performQuery(_locationSearchRequestStream!,
          (LocationDetails a) {
        print(a.placeID);
      });
    }
    if (query != null && placeId == null) {
      // Autocomplete call
      _streamController!.add(LocationSearchRequest(
          query: LocationAutocompleteQuery(text: query, countryCode: "na")));
      // emit to cause list rebuild
      emit(SearchRequest(query));
    } else if (query == null && placeId != null) {
      // Details call
      _streamController!.add(LocationSearchRequest(
          details: LocationDetailsQuery(placeID: placeId)));
      emit(SearchRequest(placeId));
    }
  }

  void closeStreams() {
    _streamController?.close();
    _locationSearchRequestStream = null;
    _remoteWasAlreadyCalled = false;
  }
}
