part of 'search_cubit.dart';

abstract class SearchState extends Equatable {
  final Object? property;
  SearchState({this.property});

  @override
  List<Object> get props => [property ?? []];
}

class SearchInitial extends SearchState {}

class SearchRequestTapLoading extends SearchState {}

class SearchLocationRequest extends SearchState {
  final String query;

  SearchLocationRequest(this.query) : super(property: query);
}

class SearchRequestTapSuccess extends SearchState {
  final LocationDetails details;

  SearchRequestTapSuccess(this.details) : super(property: details);
}
