///
//  Generated code. Do not modify.
//  source: property_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use propertyDescriptor instead')
const Property$json = const {
  '1': 'Property',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'userID', '3': 2, '4': 1, '5': 9, '10': 'userID'},
    const {'1': 'propertyTypeID', '3': 3, '4': 1, '5': 5, '10': 'propertyTypeID'},
    const {'1': 'propertyType', '3': 4, '4': 1, '5': 9, '10': 'propertyType'},
    const {'1': 'propertyCategoryID', '3': 5, '4': 1, '5': 5, '10': 'propertyCategoryID'},
    const {'1': 'propertyCategory', '3': 6, '4': 1, '5': 9, '10': 'propertyCategory'},
    const {'1': 'propertyUsageID', '3': 7, '4': 1, '5': 5, '10': 'propertyUsageID'},
    const {'1': 'propertyUsage', '3': 8, '4': 1, '5': 9, '10': 'propertyUsage'},
    const {'1': 'bedrooms', '3': 9, '4': 1, '5': 5, '10': 'bedrooms'},
    const {'1': 'bathrooms', '3': 10, '4': 1, '5': 5, '10': 'bathrooms'},
    const {'1': 'surburb', '3': 11, '4': 1, '5': 9, '10': 'surburb'},
    const {'1': 'town', '3': 12, '4': 1, '5': 9, '10': 'town'},
    const {'1': 'title', '3': 13, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'description', '3': 14, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'currency', '3': 15, '4': 1, '5': 9, '10': 'currency'},
    const {'1': 'available', '3': 16, '4': 1, '5': 8, '10': 'available'},
    const {'1': 'price', '3': 17, '4': 1, '5': 2, '10': 'price'},
    const {'1': 'deposit', '3': 18, '4': 1, '5': 2, '10': 'deposit'},
    const {'1': 'sharingPrice', '3': 19, '4': 1, '5': 2, '10': 'sharingPrice'},
    const {'1': 'promoted', '3': 20, '4': 1, '5': 8, '10': 'promoted'},
    const {'1': 'postedDate', '3': 21, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'postedDate'},
    const {'1': 'petsAllowed', '3': 22, '4': 1, '5': 8, '10': 'petsAllowed'},
    const {'1': 'freeWifi', '3': 23, '4': 1, '5': 8, '10': 'freeWifi'},
    const {'1': 'waterIncluded', '3': 24, '4': 1, '5': 8, '10': 'waterIncluded'},
    const {'1': 'electricityIncluded', '3': 25, '4': 1, '5': 8, '10': 'electricityIncluded'},
    const {'1': 'latitude', '3': 26, '4': 1, '5': 2, '10': 'latitude'},
    const {'1': 'longitude', '3': 27, '4': 1, '5': 2, '10': 'longitude'},
    const {'1': 'photos', '3': 28, '4': 3, '5': 11, '6': '.property.service.Photo', '10': 'photos'},
  ],
};

/// Descriptor for `Property`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List propertyDescriptor = $convert.base64Decode('CghQcm9wZXJ0eRIOCgJpZBgBIAEoCVICaWQSFgoGdXNlcklEGAIgASgJUgZ1c2VySUQSJgoOcHJvcGVydHlUeXBlSUQYAyABKAVSDnByb3BlcnR5VHlwZUlEEiIKDHByb3BlcnR5VHlwZRgEIAEoCVIMcHJvcGVydHlUeXBlEi4KEnByb3BlcnR5Q2F0ZWdvcnlJRBgFIAEoBVIScHJvcGVydHlDYXRlZ29yeUlEEioKEHByb3BlcnR5Q2F0ZWdvcnkYBiABKAlSEHByb3BlcnR5Q2F0ZWdvcnkSKAoPcHJvcGVydHlVc2FnZUlEGAcgASgFUg9wcm9wZXJ0eVVzYWdlSUQSJAoNcHJvcGVydHlVc2FnZRgIIAEoCVINcHJvcGVydHlVc2FnZRIaCghiZWRyb29tcxgJIAEoBVIIYmVkcm9vbXMSHAoJYmF0aHJvb21zGAogASgFUgliYXRocm9vbXMSGAoHc3VyYnVyYhgLIAEoCVIHc3VyYnVyYhISCgR0b3duGAwgASgJUgR0b3duEhQKBXRpdGxlGA0gASgJUgV0aXRsZRIgCgtkZXNjcmlwdGlvbhgOIAEoCVILZGVzY3JpcHRpb24SGgoIY3VycmVuY3kYDyABKAlSCGN1cnJlbmN5EhwKCWF2YWlsYWJsZRgQIAEoCFIJYXZhaWxhYmxlEhQKBXByaWNlGBEgASgCUgVwcmljZRIYCgdkZXBvc2l0GBIgASgCUgdkZXBvc2l0EiIKDHNoYXJpbmdQcmljZRgTIAEoAlIMc2hhcmluZ1ByaWNlEhoKCHByb21vdGVkGBQgASgIUghwcm9tb3RlZBI6Cgpwb3N0ZWREYXRlGBUgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIKcG9zdGVkRGF0ZRIgCgtwZXRzQWxsb3dlZBgWIAEoCFILcGV0c0FsbG93ZWQSGgoIZnJlZVdpZmkYFyABKAhSCGZyZWVXaWZpEiQKDXdhdGVySW5jbHVkZWQYGCABKAhSDXdhdGVySW5jbHVkZWQSMAoTZWxlY3RyaWNpdHlJbmNsdWRlZBgZIAEoCFITZWxlY3RyaWNpdHlJbmNsdWRlZBIaCghsYXRpdHVkZRgaIAEoAlIIbGF0aXR1ZGUSHAoJbG9uZ2l0dWRlGBsgASgCUglsb25naXR1ZGUSLwoGcGhvdG9zGBwgAygLMhcucHJvcGVydHkuc2VydmljZS5QaG90b1IGcGhvdG9z');
@$core.Deprecated('Use minimalPropertyDescriptor instead')
const MinimalProperty$json = const {
  '1': 'MinimalProperty',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'propertyTypeID', '3': 2, '4': 1, '5': 5, '10': 'propertyTypeID'},
    const {'1': 'propertyType', '3': 3, '4': 1, '5': 9, '10': 'propertyType'},
    const {'1': 'propertyCategoryID', '3': 4, '4': 1, '5': 5, '10': 'propertyCategoryID'},
    const {'1': 'propertyCategory', '3': 5, '4': 1, '5': 9, '10': 'propertyCategory'},
    const {'1': 'propertyUsageID', '3': 6, '4': 1, '5': 5, '10': 'propertyUsageID'},
    const {'1': 'propertyUsage', '3': 7, '4': 1, '5': 9, '10': 'propertyUsage'},
    const {'1': 'bedrooms', '3': 8, '4': 1, '5': 5, '10': 'bedrooms'},
    const {'1': 'title', '3': 9, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'currency', '3': 10, '4': 1, '5': 9, '10': 'currency'},
    const {'1': 'price', '3': 11, '4': 1, '5': 2, '10': 'price'},
    const {'1': 'promoted', '3': 12, '4': 1, '5': 8, '10': 'promoted'},
    const {'1': 'postedDate', '3': 13, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'postedDate'},
    const {'1': 'photos', '3': 14, '4': 3, '5': 11, '6': '.property.service.Photo', '10': 'photos'},
    const {'1': 'userID', '3': 15, '4': 1, '5': 9, '10': 'userID'},
    const {'1': 'latitude', '3': 16, '4': 1, '5': 2, '10': 'latitude'},
    const {'1': 'longitude', '3': 17, '4': 1, '5': 2, '10': 'longitude'},
    const {'1': 'town', '3': 18, '4': 1, '5': 9, '10': 'town'},
  ],
};

/// Descriptor for `MinimalProperty`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List minimalPropertyDescriptor = $convert.base64Decode('Cg9NaW5pbWFsUHJvcGVydHkSDgoCaWQYASABKAlSAmlkEiYKDnByb3BlcnR5VHlwZUlEGAIgASgFUg5wcm9wZXJ0eVR5cGVJRBIiCgxwcm9wZXJ0eVR5cGUYAyABKAlSDHByb3BlcnR5VHlwZRIuChJwcm9wZXJ0eUNhdGVnb3J5SUQYBCABKAVSEnByb3BlcnR5Q2F0ZWdvcnlJRBIqChBwcm9wZXJ0eUNhdGVnb3J5GAUgASgJUhBwcm9wZXJ0eUNhdGVnb3J5EigKD3Byb3BlcnR5VXNhZ2VJRBgGIAEoBVIPcHJvcGVydHlVc2FnZUlEEiQKDXByb3BlcnR5VXNhZ2UYByABKAlSDXByb3BlcnR5VXNhZ2USGgoIYmVkcm9vbXMYCCABKAVSCGJlZHJvb21zEhQKBXRpdGxlGAkgASgJUgV0aXRsZRIaCghjdXJyZW5jeRgKIAEoCVIIY3VycmVuY3kSFAoFcHJpY2UYCyABKAJSBXByaWNlEhoKCHByb21vdGVkGAwgASgIUghwcm9tb3RlZBI6Cgpwb3N0ZWREYXRlGA0gASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIKcG9zdGVkRGF0ZRIvCgZwaG90b3MYDiADKAsyFy5wcm9wZXJ0eS5zZXJ2aWNlLlBob3RvUgZwaG90b3MSFgoGdXNlcklEGA8gASgJUgZ1c2VySUQSGgoIbGF0aXR1ZGUYECABKAJSCGxhdGl0dWRlEhwKCWxvbmdpdHVkZRgRIAEoAlIJbG9uZ2l0dWRlEhIKBHRvd24YEiABKAlSBHRvd24=');
@$core.Deprecated('Use photoDescriptor instead')
const Photo$json = const {
  '1': 'Photo',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'url', '3': 2, '4': 1, '5': 9, '10': 'url'},
    const {'1': 'propertyID', '3': 3, '4': 1, '5': 9, '10': 'propertyID'},
  ],
};

/// Descriptor for `Photo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List photoDescriptor = $convert.base64Decode('CgVQaG90bxIOCgJpZBgBIAEoCVICaWQSEAoDdXJsGAIgASgJUgN1cmwSHgoKcHJvcGVydHlJRBgDIAEoCVIKcHJvcGVydHlJRA==');
@$core.Deprecated('Use featuredAreasRequestDescriptor instead')
const FeaturedAreasRequest$json = const {
  '1': 'FeaturedAreasRequest',
  '2': const [
    const {'1': 'country', '3': 1, '4': 1, '5': 9, '10': 'country'},
  ],
};

/// Descriptor for `FeaturedAreasRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List featuredAreasRequestDescriptor = $convert.base64Decode('ChRGZWF0dXJlZEFyZWFzUmVxdWVzdBIYCgdjb3VudHJ5GAEgASgJUgdjb3VudHJ5');
@$core.Deprecated('Use featuredAreasResponseDescriptor instead')
const FeaturedAreasResponse$json = const {
  '1': 'FeaturedAreasResponse',
  '2': const [
    const {'1': 'featuredAreas', '3': 1, '4': 3, '5': 11, '6': '.property.service.FeaturedArea', '10': 'featuredAreas'},
  ],
};

/// Descriptor for `FeaturedAreasResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List featuredAreasResponseDescriptor = $convert.base64Decode('ChVGZWF0dXJlZEFyZWFzUmVzcG9uc2USRAoNZmVhdHVyZWRBcmVhcxgBIAMoCzIeLnByb3BlcnR5LnNlcnZpY2UuRmVhdHVyZWRBcmVhUg1mZWF0dXJlZEFyZWFz');
@$core.Deprecated('Use featuredAreaDescriptor instead')
const FeaturedArea$json = const {
  '1': 'FeaturedArea',
  '2': const [
    const {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'photoURL', '3': 2, '4': 1, '5': 9, '10': 'photoURL'},
    const {'1': 'latitude', '3': 3, '4': 1, '5': 2, '10': 'latitude'},
    const {'1': 'longitude', '3': 4, '4': 1, '5': 2, '10': 'longitude'},
  ],
};

/// Descriptor for `FeaturedArea`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List featuredAreaDescriptor = $convert.base64Decode('CgxGZWF0dXJlZEFyZWESFAoFdGl0bGUYASABKAlSBXRpdGxlEhoKCHBob3RvVVJMGAIgASgJUghwaG90b1VSTBIaCghsYXRpdHVkZRgDIAEoAlIIbGF0aXR1ZGUSHAoJbG9uZ2l0dWRlGAQgASgCUglsb25naXR1ZGU=');
@$core.Deprecated('Use promotedRequestDescriptor instead')
const PromotedRequest$json = const {
  '1': 'PromotedRequest',
  '2': const [
    const {'1': 'latitude', '3': 1, '4': 1, '5': 2, '10': 'latitude'},
    const {'1': 'longitude', '3': 2, '4': 1, '5': 2, '10': 'longitude'},
    const {'1': 'radius', '3': 3, '4': 1, '5': 2, '10': 'radius'},
  ],
};

/// Descriptor for `PromotedRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List promotedRequestDescriptor = $convert.base64Decode('Cg9Qcm9tb3RlZFJlcXVlc3QSGgoIbGF0aXR1ZGUYASABKAJSCGxhdGl0dWRlEhwKCWxvbmdpdHVkZRgCIAEoAlIJbG9uZ2l0dWRlEhYKBnJhZGl1cxgDIAEoAlIGcmFkaXVz');
@$core.Deprecated('Use promotedResponseDescriptor instead')
const PromotedResponse$json = const {
  '1': 'PromotedResponse',
  '2': const [
    const {'1': 'properties', '3': 1, '4': 3, '5': 11, '6': '.property.service.SingleMinimalProperty', '10': 'properties'},
  ],
};

/// Descriptor for `PromotedResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List promotedResponseDescriptor = $convert.base64Decode('ChBQcm9tb3RlZFJlc3BvbnNlEkcKCnByb3BlcnRpZXMYASADKAsyJy5wcm9wZXJ0eS5zZXJ2aWNlLlNpbmdsZU1pbmltYWxQcm9wZXJ0eVIKcHJvcGVydGllcw==');
@$core.Deprecated('Use deletePropertyRequestDescriptor instead')
const DeletePropertyRequest$json = const {
  '1': 'DeletePropertyRequest',
  '2': const [
    const {'1': 'propertyID', '3': 1, '4': 1, '5': 9, '10': 'propertyID'},
  ],
};

/// Descriptor for `DeletePropertyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deletePropertyRequestDescriptor = $convert.base64Decode('ChVEZWxldGVQcm9wZXJ0eVJlcXVlc3QSHgoKcHJvcGVydHlJRBgBIAEoCVIKcHJvcGVydHlJRA==');
@$core.Deprecated('Use deletePropertyResponseDescriptor instead')
const DeletePropertyResponse$json = const {
  '1': 'DeletePropertyResponse',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 8, '10': 'status'},
  ],
};

/// Descriptor for `DeletePropertyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deletePropertyResponseDescriptor = $convert.base64Decode('ChZEZWxldGVQcm9wZXJ0eVJlc3BvbnNlEhYKBnN0YXR1cxgBIAEoCFIGc3RhdHVz');
@$core.Deprecated('Use getSinglePropertyRequestDescriptor instead')
const GetSinglePropertyRequest$json = const {
  '1': 'GetSinglePropertyRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetSinglePropertyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSinglePropertyRequestDescriptor = $convert.base64Decode('ChhHZXRTaW5nbGVQcm9wZXJ0eVJlcXVlc3QSDgoCaWQYASABKAlSAmlk');
@$core.Deprecated('Use singlePropertyResponseDescriptor instead')
const SinglePropertyResponse$json = const {
  '1': 'SinglePropertyResponse',
  '2': const [
    const {'1': 'property', '3': 1, '4': 1, '5': 11, '6': '.property.service.Property', '10': 'property'},
    const {'1': 'owner', '3': 2, '4': 1, '5': 11, '6': '.user.service.GetUserResponse', '10': 'owner'},
  ],
};

/// Descriptor for `SinglePropertyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List singlePropertyResponseDescriptor = $convert.base64Decode('ChZTaW5nbGVQcm9wZXJ0eVJlc3BvbnNlEjYKCHByb3BlcnR5GAEgASgLMhoucHJvcGVydHkuc2VydmljZS5Qcm9wZXJ0eVIIcHJvcGVydHkSMwoFb3duZXIYAiABKAsyHS51c2VyLnNlcnZpY2UuR2V0VXNlclJlc3BvbnNlUgVvd25lcg==');
@$core.Deprecated('Use getMultiplePropertyRequestDescriptor instead')
const GetMultiplePropertyRequest$json = const {
  '1': 'GetMultiplePropertyRequest',
  '2': const [
    const {'1': 'latitude', '3': 1, '4': 1, '5': 2, '10': 'latitude'},
    const {'1': 'longitude', '3': 2, '4': 1, '5': 2, '10': 'longitude'},
    const {'1': 'radius', '3': 3, '4': 1, '5': 2, '10': 'radius'},
  ],
};

/// Descriptor for `GetMultiplePropertyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMultiplePropertyRequestDescriptor = $convert.base64Decode('ChpHZXRNdWx0aXBsZVByb3BlcnR5UmVxdWVzdBIaCghsYXRpdHVkZRgBIAEoAlIIbGF0aXR1ZGUSHAoJbG9uZ2l0dWRlGAIgASgCUglsb25naXR1ZGUSFgoGcmFkaXVzGAMgASgCUgZyYWRpdXM=');
@$core.Deprecated('Use getMultiplePropertyResponseDescriptor instead')
const GetMultiplePropertyResponse$json = const {
  '1': 'GetMultiplePropertyResponse',
  '2': const [
    const {'1': 'response', '3': 1, '4': 3, '5': 11, '6': '.property.service.SinglePropertyResponse', '10': 'response'},
  ],
};

/// Descriptor for `GetMultiplePropertyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMultiplePropertyResponseDescriptor = $convert.base64Decode('ChtHZXRNdWx0aXBsZVByb3BlcnR5UmVzcG9uc2USRAoIcmVzcG9uc2UYASADKAsyKC5wcm9wZXJ0eS5zZXJ2aWNlLlNpbmdsZVByb3BlcnR5UmVzcG9uc2VSCHJlc3BvbnNl');
@$core.Deprecated('Use createPropertyRequestDescriptor instead')
const CreatePropertyRequest$json = const {
  '1': 'CreatePropertyRequest',
  '2': const [
    const {'1': 'property', '3': 1, '4': 1, '5': 11, '6': '.property.service.Property', '10': 'property'},
  ],
};

/// Descriptor for `CreatePropertyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createPropertyRequestDescriptor = $convert.base64Decode('ChVDcmVhdGVQcm9wZXJ0eVJlcXVlc3QSNgoIcHJvcGVydHkYASABKAsyGi5wcm9wZXJ0eS5zZXJ2aWNlLlByb3BlcnR5Ughwcm9wZXJ0eQ==');
@$core.Deprecated('Use getMinimalPropertiesRequestDescriptor instead')
const GetMinimalPropertiesRequest$json = const {
  '1': 'GetMinimalPropertiesRequest',
  '2': const [
    const {'1': 'latitude', '3': 1, '4': 1, '5': 2, '10': 'latitude'},
    const {'1': 'longitude', '3': 2, '4': 1, '5': 2, '10': 'longitude'},
    const {'1': 'radius', '3': 3, '4': 1, '5': 2, '10': 'radius'},
  ],
};

/// Descriptor for `GetMinimalPropertiesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMinimalPropertiesRequestDescriptor = $convert.base64Decode('ChtHZXRNaW5pbWFsUHJvcGVydGllc1JlcXVlc3QSGgoIbGF0aXR1ZGUYASABKAJSCGxhdGl0dWRlEhwKCWxvbmdpdHVkZRgCIAEoAlIJbG9uZ2l0dWRlEhYKBnJhZGl1cxgDIAEoAlIGcmFkaXVz');
@$core.Deprecated('Use getMinimalPropertiesResponseDescriptor instead')
const GetMinimalPropertiesResponse$json = const {
  '1': 'GetMinimalPropertiesResponse',
  '2': const [
    const {'1': 'singleMinimalProperties', '3': 1, '4': 3, '5': 11, '6': '.property.service.SingleMinimalProperty', '10': 'singleMinimalProperties'},
  ],
};

/// Descriptor for `GetMinimalPropertiesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMinimalPropertiesResponseDescriptor = $convert.base64Decode('ChxHZXRNaW5pbWFsUHJvcGVydGllc1Jlc3BvbnNlEmEKF3NpbmdsZU1pbmltYWxQcm9wZXJ0aWVzGAEgAygLMicucHJvcGVydHkuc2VydmljZS5TaW5nbGVNaW5pbWFsUHJvcGVydHlSF3NpbmdsZU1pbmltYWxQcm9wZXJ0aWVz');
@$core.Deprecated('Use singleMinimalPropertyDescriptor instead')
const SingleMinimalProperty$json = const {
  '1': 'SingleMinimalProperty',
  '2': const [
    const {'1': 'property', '3': 1, '4': 1, '5': 11, '6': '.property.service.MinimalProperty', '10': 'property'},
    const {'1': 'owner', '3': 2, '4': 1, '5': 11, '6': '.user.service.GetUserResponse', '10': 'owner'},
  ],
};

/// Descriptor for `SingleMinimalProperty`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List singleMinimalPropertyDescriptor = $convert.base64Decode('ChVTaW5nbGVNaW5pbWFsUHJvcGVydHkSPQoIcHJvcGVydHkYASABKAsyIS5wcm9wZXJ0eS5zZXJ2aWNlLk1pbmltYWxQcm9wZXJ0eVIIcHJvcGVydHkSMwoFb3duZXIYAiABKAsyHS51c2VyLnNlcnZpY2UuR2V0VXNlclJlc3BvbnNlUgVvd25lcg==');
@$core.Deprecated('Use getUserPropertiesRequestDescriptor instead')
const GetUserPropertiesRequest$json = const {
  '1': 'GetUserPropertiesRequest',
  '2': const [
    const {'1': 'userID', '3': 1, '4': 1, '5': 9, '10': 'userID'},
  ],
};

/// Descriptor for `GetUserPropertiesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getUserPropertiesRequestDescriptor = $convert.base64Decode('ChhHZXRVc2VyUHJvcGVydGllc1JlcXVlc3QSFgoGdXNlcklEGAEgASgJUgZ1c2VySUQ=');
@$core.Deprecated('Use getUserPropertiesResponseDescriptor instead')
const GetUserPropertiesResponse$json = const {
  '1': 'GetUserPropertiesResponse',
  '2': const [
    const {'1': 'properties', '3': 1, '4': 3, '5': 11, '6': '.property.service.Property', '10': 'properties'},
  ],
};

/// Descriptor for `GetUserPropertiesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getUserPropertiesResponseDescriptor = $convert.base64Decode('ChlHZXRVc2VyUHJvcGVydGllc1Jlc3BvbnNlEjoKCnByb3BlcnRpZXMYASADKAsyGi5wcm9wZXJ0eS5zZXJ2aWNlLlByb3BlcnR5Ugpwcm9wZXJ0aWVz');
@$core.Deprecated('Use locationSearchRequestDescriptor instead')
const LocationSearchRequest$json = const {
  '1': 'LocationSearchRequest',
  '2': const [
    const {'1': 'query', '3': 1, '4': 1, '5': 11, '6': '.property.service.LocationAutocompleteQuery', '9': 0, '10': 'query'},
    const {'1': 'details', '3': 2, '4': 1, '5': 11, '6': '.property.service.LocationDetailsQuery', '9': 0, '10': 'details'},
  ],
  '8': const [
    const {'1': 'search_oneof'},
  ],
};

/// Descriptor for `LocationSearchRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List locationSearchRequestDescriptor = $convert.base64Decode('ChVMb2NhdGlvblNlYXJjaFJlcXVlc3QSQwoFcXVlcnkYASABKAsyKy5wcm9wZXJ0eS5zZXJ2aWNlLkxvY2F0aW9uQXV0b2NvbXBsZXRlUXVlcnlIAFIFcXVlcnkSQgoHZGV0YWlscxgCIAEoCzImLnByb3BlcnR5LnNlcnZpY2UuTG9jYXRpb25EZXRhaWxzUXVlcnlIAFIHZGV0YWlsc0IOCgxzZWFyY2hfb25lb2Y=');
@$core.Deprecated('Use locationAutocompleteQueryDescriptor instead')
const LocationAutocompleteQuery$json = const {
  '1': 'LocationAutocompleteQuery',
  '2': const [
    const {'1': 'text', '3': 1, '4': 1, '5': 9, '10': 'text'},
    const {'1': 'countryCode', '3': 2, '4': 1, '5': 9, '10': 'countryCode'},
  ],
};

/// Descriptor for `LocationAutocompleteQuery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List locationAutocompleteQueryDescriptor = $convert.base64Decode('ChlMb2NhdGlvbkF1dG9jb21wbGV0ZVF1ZXJ5EhIKBHRleHQYASABKAlSBHRleHQSIAoLY291bnRyeUNvZGUYAiABKAlSC2NvdW50cnlDb2Rl');
@$core.Deprecated('Use locationDetailsQueryDescriptor instead')
const LocationDetailsQuery$json = const {
  '1': 'LocationDetailsQuery',
  '2': const [
    const {'1': 'placeID', '3': 1, '4': 1, '5': 9, '10': 'placeID'},
  ],
};

/// Descriptor for `LocationDetailsQuery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List locationDetailsQueryDescriptor = $convert.base64Decode('ChRMb2NhdGlvbkRldGFpbHNRdWVyeRIYCgdwbGFjZUlEGAEgASgJUgdwbGFjZUlE');
@$core.Deprecated('Use locationSearchResponseDescriptor instead')
const LocationSearchResponse$json = const {
  '1': 'LocationSearchResponse',
  '2': const [
    const {'1': 'details', '3': 1, '4': 1, '5': 11, '6': '.property.service.LocationDetails', '9': 0, '10': 'details'},
    const {'1': 'autocompleteResponse', '3': 2, '4': 1, '5': 11, '6': '.property.service.LocationAutocompleteResponse', '9': 0, '10': 'autocompleteResponse'},
  ],
  '8': const [
    const {'1': 'response_oneof'},
  ],
};

/// Descriptor for `LocationSearchResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List locationSearchResponseDescriptor = $convert.base64Decode('ChZMb2NhdGlvblNlYXJjaFJlc3BvbnNlEj0KB2RldGFpbHMYASABKAsyIS5wcm9wZXJ0eS5zZXJ2aWNlLkxvY2F0aW9uRGV0YWlsc0gAUgdkZXRhaWxzEmQKFGF1dG9jb21wbGV0ZVJlc3BvbnNlGAIgASgLMi4ucHJvcGVydHkuc2VydmljZS5Mb2NhdGlvbkF1dG9jb21wbGV0ZVJlc3BvbnNlSABSFGF1dG9jb21wbGV0ZVJlc3BvbnNlQhAKDnJlc3BvbnNlX29uZW9m');
@$core.Deprecated('Use locationDetailsDescriptor instead')
const LocationDetails$json = const {
  '1': 'LocationDetails',
  '2': const [
    const {'1': 'latitude', '3': 1, '4': 1, '5': 2, '10': 'latitude'},
    const {'1': 'longitude', '3': 2, '4': 1, '5': 2, '10': 'longitude'},
    const {'1': 'placeID', '3': 3, '4': 1, '5': 9, '10': 'placeID'},
  ],
};

/// Descriptor for `LocationDetails`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List locationDetailsDescriptor = $convert.base64Decode('Cg9Mb2NhdGlvbkRldGFpbHMSGgoIbGF0aXR1ZGUYASABKAJSCGxhdGl0dWRlEhwKCWxvbmdpdHVkZRgCIAEoAlIJbG9uZ2l0dWRlEhgKB3BsYWNlSUQYAyABKAlSB3BsYWNlSUQ=');
@$core.Deprecated('Use locationAutocompleteResponseDescriptor instead')
const LocationAutocompleteResponse$json = const {
  '1': 'LocationAutocompleteResponse',
  '2': const [
    const {'1': 'responses', '3': 1, '4': 3, '5': 11, '6': '.property.service.LocationAutocomplete', '10': 'responses'},
  ],
};

/// Descriptor for `LocationAutocompleteResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List locationAutocompleteResponseDescriptor = $convert.base64Decode('ChxMb2NhdGlvbkF1dG9jb21wbGV0ZVJlc3BvbnNlEkQKCXJlc3BvbnNlcxgBIAMoCzImLnByb3BlcnR5LnNlcnZpY2UuTG9jYXRpb25BdXRvY29tcGxldGVSCXJlc3BvbnNlcw==');
@$core.Deprecated('Use locationAutocompleteDescriptor instead')
const LocationAutocomplete$json = const {
  '1': 'LocationAutocomplete',
  '2': const [
    const {'1': 'placeID', '3': 1, '4': 1, '5': 9, '10': 'placeID'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'secondaryText', '3': 3, '4': 1, '5': 9, '10': 'secondaryText'},
  ],
};

/// Descriptor for `LocationAutocomplete`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List locationAutocompleteDescriptor = $convert.base64Decode('ChRMb2NhdGlvbkF1dG9jb21wbGV0ZRIYCgdwbGFjZUlEGAEgASgJUgdwbGFjZUlEEhQKBXRpdGxlGAIgASgJUgV0aXRsZRIkCg1zZWNvbmRhcnlUZXh0GAMgASgJUg1zZWNvbmRhcnlUZXh0');
