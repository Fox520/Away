import 'package:away/data/repositories/property_repository.dart';
import 'package:away/data/repositories/user_repository.dart';
import 'package:away/di/locator.dart';
import 'package:away/generated/property_service.pb.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(SearchInitial());
  void autocompletePlaces(String query) async {
    final result = await getIt<PropertyRepository>().performQuery(query);
    result.fold((autocompletes) {
      getIt<PropertyRepository>().autocompleteResults = autocompletes;
      emit(SearchQueryResult(autocompletes));
    }, (details) {});
  }
}
