part of 'search_cubit.dart';

abstract class SearchState extends Equatable {
  final Object? property;
  SearchState({this.property});

  @override
  List<Object> get props => [property ?? []];
}

class SearchInitial extends SearchState {}

class SearchRequest extends SearchState {
  final String query;

  SearchRequest(this.query) : super(property: query);
}
