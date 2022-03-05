part of 'promoted_properties_cubit.dart';

abstract class PromotedPropertiesState extends Equatable {
  final Object? property;
  PromotedPropertiesState({this.property});

  @override
  List<Object> get props => [property ?? []];
}

class PromotedPropertiesInitial extends PromotedPropertiesState {}

class PromotedPropertiesSearchResult extends PromotedPropertiesState {
  final List<SingleMinimalProperty> props;

  PromotedPropertiesSearchResult(this.props) : super(property: props);
}
