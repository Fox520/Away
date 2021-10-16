///
//  Generated code. Do not modify.
//  source: property_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'property_service.pb.dart' as $1;
export 'property_service.pb.dart';

class PropertyServiceClient extends $grpc.Client {
  static final _$getMinimalInfoProperties = $grpc.ClientMethod<
          $1.GetMinimalPropertiesRequest, $1.GetMinimalPropertiesResponse>(
      '/property.service.PropertyService/GetMinimalInfoProperties',
      ($1.GetMinimalPropertiesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.GetMinimalPropertiesResponse.fromBuffer(value));
  static final _$getSingleProperty = $grpc.ClientMethod<
          $1.GetSinglePropertyRequest, $1.SinglePropertyResponse>(
      '/property.service.PropertyService/GetSingleProperty',
      ($1.GetSinglePropertyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.SinglePropertyResponse.fromBuffer(value));
  static final _$getUserProperties = $grpc.ClientMethod<
          $1.GetUserPropertiesRequest, $1.GetUserPropertiesResponse>(
      '/property.service.PropertyService/GetUserProperties',
      ($1.GetUserPropertiesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.GetUserPropertiesResponse.fromBuffer(value));
  static final _$getMultipleProperties = $grpc.ClientMethod<
          $1.GetMultiplePropertyRequest, $1.GetMultiplePropertyResponse>(
      '/property.service.PropertyService/GetMultipleProperties',
      ($1.GetMultiplePropertyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.GetMultiplePropertyResponse.fromBuffer(value));
  static final _$createProperty =
      $grpc.ClientMethod<$1.CreatePropertyRequest, $1.Property>(
          '/property.service.PropertyService/CreateProperty',
          ($1.CreatePropertyRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Property.fromBuffer(value));
  static final _$updateProperty = $grpc.ClientMethod<$1.Property, $1.Property>(
      '/property.service.PropertyService/UpdateProperty',
      ($1.Property value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Property.fromBuffer(value));
  static final _$deleteProperty =
      $grpc.ClientMethod<$1.DeletePropertyRequest, $1.DeletePropertyResponse>(
          '/property.service.PropertyService/DeleteProperty',
          ($1.DeletePropertyRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.DeletePropertyResponse.fromBuffer(value));
  static final _$getFeaturedAreas =
      $grpc.ClientMethod<$1.FeaturedAreasRequest, $1.FeaturedAreasResponse>(
          '/property.service.PropertyService/GetFeaturedAreas',
          ($1.FeaturedAreasRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.FeaturedAreasResponse.fromBuffer(value));
  static final _$getPromotedProperties =
      $grpc.ClientMethod<$1.PromotedRequest, $1.PromotedResponse>(
          '/property.service.PropertyService/GetPromotedProperties',
          ($1.PromotedRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.PromotedResponse.fromBuffer(value));
  static final _$locationSearch =
      $grpc.ClientMethod<$1.LocationSearchRequest, $1.LocationSearchResponse>(
          '/property.service.PropertyService/LocationSearch',
          ($1.LocationSearchRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.LocationSearchResponse.fromBuffer(value));

  PropertyServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$1.GetMinimalPropertiesResponse>
      getMinimalInfoProperties($1.GetMinimalPropertiesRequest request,
          {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getMinimalInfoProperties, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$1.SinglePropertyResponse> getSingleProperty(
      $1.GetSinglePropertyRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSingleProperty, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetUserPropertiesResponse> getUserProperties(
      $1.GetUserPropertiesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUserProperties, request, options: options);
  }

  $grpc.ResponseStream<$1.GetMultiplePropertyResponse> getMultipleProperties(
      $1.GetMultiplePropertyRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getMultipleProperties, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$1.Property> createProperty(
      $1.CreatePropertyRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createProperty, request, options: options);
  }

  $grpc.ResponseFuture<$1.Property> updateProperty($1.Property request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateProperty, request, options: options);
  }

  $grpc.ResponseFuture<$1.DeletePropertyResponse> deleteProperty(
      $1.DeletePropertyRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteProperty, request, options: options);
  }

  $grpc.ResponseFuture<$1.FeaturedAreasResponse> getFeaturedAreas(
      $1.FeaturedAreasRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getFeaturedAreas, request, options: options);
  }

  $grpc.ResponseStream<$1.PromotedResponse> getPromotedProperties(
      $1.PromotedRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getPromotedProperties, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$1.LocationSearchResponse> locationSearch(
      $async.Stream<$1.LocationSearchRequest> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$locationSearch, request, options: options);
  }
}

abstract class PropertyServiceBase extends $grpc.Service {
  $core.String get $name => 'property.service.PropertyService';

  PropertyServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.GetMinimalPropertiesRequest,
            $1.GetMinimalPropertiesResponse>(
        'GetMinimalInfoProperties',
        getMinimalInfoProperties_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $1.GetMinimalPropertiesRequest.fromBuffer(value),
        ($1.GetMinimalPropertiesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetSinglePropertyRequest,
            $1.SinglePropertyResponse>(
        'GetSingleProperty',
        getSingleProperty_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.GetSinglePropertyRequest.fromBuffer(value),
        ($1.SinglePropertyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetUserPropertiesRequest,
            $1.GetUserPropertiesResponse>(
        'GetUserProperties',
        getUserProperties_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.GetUserPropertiesRequest.fromBuffer(value),
        ($1.GetUserPropertiesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetMultiplePropertyRequest,
            $1.GetMultiplePropertyResponse>(
        'GetMultipleProperties',
        getMultipleProperties_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $1.GetMultiplePropertyRequest.fromBuffer(value),
        ($1.GetMultiplePropertyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.CreatePropertyRequest, $1.Property>(
        'CreateProperty',
        createProperty_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.CreatePropertyRequest.fromBuffer(value),
        ($1.Property value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Property, $1.Property>(
        'UpdateProperty',
        updateProperty_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Property.fromBuffer(value),
        ($1.Property value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.DeletePropertyRequest,
            $1.DeletePropertyResponse>(
        'DeleteProperty',
        deleteProperty_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.DeletePropertyRequest.fromBuffer(value),
        ($1.DeletePropertyResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.FeaturedAreasRequest, $1.FeaturedAreasResponse>(
            'GetFeaturedAreas',
            getFeaturedAreas_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.FeaturedAreasRequest.fromBuffer(value),
            ($1.FeaturedAreasResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.PromotedRequest, $1.PromotedResponse>(
        'GetPromotedProperties',
        getPromotedProperties_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $1.PromotedRequest.fromBuffer(value),
        ($1.PromotedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.LocationSearchRequest,
            $1.LocationSearchResponse>(
        'LocationSearch',
        locationSearch,
        true,
        true,
        ($core.List<$core.int> value) =>
            $1.LocationSearchRequest.fromBuffer(value),
        ($1.LocationSearchResponse value) => value.writeToBuffer()));
  }

  $async.Stream<$1.GetMinimalPropertiesResponse> getMinimalInfoProperties_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.GetMinimalPropertiesRequest> request) async* {
    yield* getMinimalInfoProperties(call, await request);
  }

  $async.Future<$1.SinglePropertyResponse> getSingleProperty_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.GetSinglePropertyRequest> request) async {
    return getSingleProperty(call, await request);
  }

  $async.Future<$1.GetUserPropertiesResponse> getUserProperties_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.GetUserPropertiesRequest> request) async {
    return getUserProperties(call, await request);
  }

  $async.Stream<$1.GetMultiplePropertyResponse> getMultipleProperties_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.GetMultiplePropertyRequest> request) async* {
    yield* getMultipleProperties(call, await request);
  }

  $async.Future<$1.Property> createProperty_Pre($grpc.ServiceCall call,
      $async.Future<$1.CreatePropertyRequest> request) async {
    return createProperty(call, await request);
  }

  $async.Future<$1.Property> updateProperty_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Property> request) async {
    return updateProperty(call, await request);
  }

  $async.Future<$1.DeletePropertyResponse> deleteProperty_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.DeletePropertyRequest> request) async {
    return deleteProperty(call, await request);
  }

  $async.Future<$1.FeaturedAreasResponse> getFeaturedAreas_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.FeaturedAreasRequest> request) async {
    return getFeaturedAreas(call, await request);
  }

  $async.Stream<$1.PromotedResponse> getPromotedProperties_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.PromotedRequest> request) async* {
    yield* getPromotedProperties(call, await request);
  }

  $async.Stream<$1.GetMinimalPropertiesResponse> getMinimalInfoProperties(
      $grpc.ServiceCall call, $1.GetMinimalPropertiesRequest request);
  $async.Future<$1.SinglePropertyResponse> getSingleProperty(
      $grpc.ServiceCall call, $1.GetSinglePropertyRequest request);
  $async.Future<$1.GetUserPropertiesResponse> getUserProperties(
      $grpc.ServiceCall call, $1.GetUserPropertiesRequest request);
  $async.Stream<$1.GetMultiplePropertyResponse> getMultipleProperties(
      $grpc.ServiceCall call, $1.GetMultiplePropertyRequest request);
  $async.Future<$1.Property> createProperty(
      $grpc.ServiceCall call, $1.CreatePropertyRequest request);
  $async.Future<$1.Property> updateProperty(
      $grpc.ServiceCall call, $1.Property request);
  $async.Future<$1.DeletePropertyResponse> deleteProperty(
      $grpc.ServiceCall call, $1.DeletePropertyRequest request);
  $async.Future<$1.FeaturedAreasResponse> getFeaturedAreas(
      $grpc.ServiceCall call, $1.FeaturedAreasRequest request);
  $async.Stream<$1.PromotedResponse> getPromotedProperties(
      $grpc.ServiceCall call, $1.PromotedRequest request);
  $async.Stream<$1.LocationSearchResponse> locationSearch(
      $grpc.ServiceCall call, $async.Stream<$1.LocationSearchRequest> request);
}
