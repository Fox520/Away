part of 'featured_cubit.dart';

abstract class FeaturedState extends Equatable {
final Object? obj;
  FeaturedState({this.obj});

  @override
  List<Object> get props => [obj ?? []];
}

class FeaturedInitial extends FeaturedState {}

class FeaturedRequest extends FeaturedState {
  final String countryCode;

  FeaturedRequest(this.countryCode) : super(obj: countryCode);
}

class FeaturedResponse extends FeaturedState {
  final List<FeaturedArea> areas;

  FeaturedResponse(this.areas) : super(obj: areas);
}
