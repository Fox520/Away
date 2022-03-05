import 'dart:async';

import 'package:away/data/repositories/property_repository.dart';
import 'package:away/di/locator.dart';
import 'package:away/generated/property_service.pb.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'promoted_properties_state.dart';

class PromotedPropertiesCubit extends Cubit<PromotedPropertiesState> {
  PromotedPropertiesCubit() : super(PromotedPropertiesInitial());

  // Promoted properties related
  StreamController<PromotedRequest>? _promotedRequestStreamController;
  Stream<PromotedRequest>? _promotedRequestStream;
  bool _promotedRemoteWasAlreadyCalled = false;
  List<String> foundPropsId = [];
  int attempts = 0;
  double promotedPropertySearchRadius = 5; // KM
  void findPromotedProperties(double latitude, double longitude) async {
    if (_promotedRequestStream == null) {
      _promotedRequestStreamController = StreamController<PromotedRequest>();
      _promotedRequestStream = _promotedRequestStreamController!.stream;
    }
    // If remote was already called, only add to stream; otherwise call
    // then add to stream; avoids creating multiple remote calls
    if (!_promotedRemoteWasAlreadyCalled) {
      _promotedRemoteWasAlreadyCalled = true;
      getIt<PropertyRepository>().findPromotedProperties(
          _promotedRequestStream!, (List<SingleMinimalProperty> props) {
        emit(PromotedPropertiesSearchResult(props));
        int totalFound = 0;
        // Overall, count how many properties were returned; We use this to
        // determine if threshhold was reached.
        props.forEach((element) {
          if (!foundPropsId.contains(element.property.id)) {
            totalFound += 1;
          } else {
            foundPropsId.add(element.property.id);
          }
        });

        // Try retrieving at least 5 properties in 10 attempts
        if (totalFound < 5 && attempts < 10) {
          print("total found: $totalFound");
          attempts += 1;
          print("attempts $attempts");
          // Increase search radius
          promotedPropertySearchRadius = promotedPropertySearchRadius * 2.5;
          print(promotedPropertySearchRadius);
          Future.delayed(Duration(seconds: 1), () {
            _promotedRequestStreamController!.add(PromotedRequest(
                latitude: latitude,
                longitude: longitude,
                radius: promotedPropertySearchRadius));
          });
        }
      });
    }
    _promotedRequestStreamController!.add(PromotedRequest(
        latitude: latitude,
        longitude: longitude,
        radius: promotedPropertySearchRadius));
  }

  void closeStreams() {
    // Promoted properties related
    _promotedRequestStreamController?.close();
    _promotedRequestStream = null;
    _promotedRemoteWasAlreadyCalled = false;
  }
}
