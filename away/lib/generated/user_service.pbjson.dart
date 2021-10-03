///
//  Generated code. Do not modify.
//  source: user_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use createUserRequestDescriptor instead')
const CreateUserRequest$json = const {
  '1': 'CreateUserRequest',
  '2': const [
    const {'1': 'userName', '3': 1, '4': 1, '5': 9, '10': 'userName'},
    const {'1': 'bio', '3': 2, '4': 1, '5': 9, '10': 'bio'},
    const {'1': 'deviceToken', '3': 3, '4': 1, '5': 9, '10': 'deviceToken'},
    const {'1': 'profilePictureUrl', '3': 4, '4': 1, '5': 9, '10': 'profilePictureUrl'},
  ],
};

/// Descriptor for `CreateUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createUserRequestDescriptor = $convert.base64Decode('ChFDcmVhdGVVc2VyUmVxdWVzdBIaCgh1c2VyTmFtZRgBIAEoCVIIdXNlck5hbWUSEAoDYmlvGAIgASgJUgNiaW8SIAoLZGV2aWNlVG9rZW4YAyABKAlSC2RldmljZVRva2VuEiwKEXByb2ZpbGVQaWN0dXJlVXJsGAQgASgJUhFwcm9maWxlUGljdHVyZVVybA==');
@$core.Deprecated('Use createUserResponseDescriptor instead')
const CreateUserResponse$json = const {
  '1': 'CreateUserResponse',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `CreateUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createUserResponseDescriptor = $convert.base64Decode('ChJDcmVhdGVVc2VyUmVzcG9uc2USGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2Vzcw==');
@$core.Deprecated('Use updateUserRequestDescriptor instead')
const UpdateUserRequest$json = const {
  '1': 'UpdateUserRequest',
  '2': const [
    const {'1': 'userName', '3': 1, '4': 1, '5': 9, '10': 'userName'},
    const {'1': 'bio', '3': 2, '4': 1, '5': 9, '10': 'bio'},
    const {'1': 'deviceToken', '3': 3, '4': 1, '5': 9, '10': 'deviceToken'},
    const {'1': 'profilePictureUrl', '3': 4, '4': 1, '5': 9, '10': 'profilePictureUrl'},
  ],
};

/// Descriptor for `UpdateUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateUserRequestDescriptor = $convert.base64Decode('ChFVcGRhdGVVc2VyUmVxdWVzdBIaCgh1c2VyTmFtZRgBIAEoCVIIdXNlck5hbWUSEAoDYmlvGAIgASgJUgNiaW8SIAoLZGV2aWNlVG9rZW4YAyABKAlSC2RldmljZVRva2VuEiwKEXByb2ZpbGVQaWN0dXJlVXJsGAQgASgJUhFwcm9maWxlUGljdHVyZVVybA==');
@$core.Deprecated('Use updateUserResponseDescriptor instead')
const UpdateUserResponse$json = const {
  '1': 'UpdateUserResponse',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `UpdateUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateUserResponseDescriptor = $convert.base64Decode('ChJVcGRhdGVVc2VyUmVzcG9uc2USGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2Vzcw==');
@$core.Deprecated('Use deleteUserRequestDescriptor instead')
const DeleteUserRequest$json = const {
  '1': 'DeleteUserRequest',
};

/// Descriptor for `DeleteUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteUserRequestDescriptor = $convert.base64Decode('ChFEZWxldGVVc2VyUmVxdWVzdA==');
@$core.Deprecated('Use deleteUserResponseDescriptor instead')
const DeleteUserResponse$json = const {
  '1': 'DeleteUserResponse',
};

/// Descriptor for `DeleteUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteUserResponseDescriptor = $convert.base64Decode('ChJEZWxldGVVc2VyUmVzcG9uc2U=');
@$core.Deprecated('Use getUserRequestDescriptor instead')
const GetUserRequest$json = const {
  '1': 'GetUserRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getUserRequestDescriptor = $convert.base64Decode('Cg5HZXRVc2VyUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');
@$core.Deprecated('Use getUserResponseDescriptor instead')
const GetUserResponse$json = const {
  '1': 'GetUserResponse',
  '2': const [
    const {'1': 'user', '3': 1, '4': 1, '5': 11, '6': '.user.service.AwayUser', '9': 0, '10': 'user'},
    const {'1': 'minimalUser', '3': 2, '4': 1, '5': 11, '6': '.user.service.MinimalUserInfo', '9': 0, '10': 'minimalUser'},
  ],
  '8': const [
    const {'1': 'user_oneof'},
  ],
};

/// Descriptor for `GetUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getUserResponseDescriptor = $convert.base64Decode('Cg9HZXRVc2VyUmVzcG9uc2USLAoEdXNlchgBIAEoCzIWLnVzZXIuc2VydmljZS5Bd2F5VXNlckgAUgR1c2VyEkEKC21pbmltYWxVc2VyGAIgASgLMh0udXNlci5zZXJ2aWNlLk1pbmltYWxVc2VySW5mb0gAUgttaW5pbWFsVXNlckIMCgp1c2VyX29uZW9m');
@$core.Deprecated('Use awayUserDescriptor instead')
const AwayUser$json = const {
  '1': 'AwayUser',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'userName', '3': 2, '4': 1, '5': 9, '10': 'userName'},
    const {'1': 'email', '3': 3, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'bio', '3': 4, '4': 1, '5': 9, '10': 'bio'},
    const {'1': 'deviceToken', '3': 5, '4': 1, '5': 9, '10': 'deviceToken'},
    const {'1': 'verified', '3': 6, '4': 1, '5': 8, '10': 'verified'},
    const {'1': 'subscriptionStatus', '3': 7, '4': 1, '5': 9, '10': 'subscriptionStatus'},
    const {'1': 'createdAt', '3': 8, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    const {'1': 'profilePictureUrl', '3': 9, '4': 1, '5': 9, '10': 'profilePictureUrl'},
  ],
};

/// Descriptor for `AwayUser`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List awayUserDescriptor = $convert.base64Decode('CghBd2F5VXNlchIOCgJpZBgBIAEoCVICaWQSGgoIdXNlck5hbWUYAiABKAlSCHVzZXJOYW1lEhQKBWVtYWlsGAMgASgJUgVlbWFpbBIQCgNiaW8YBCABKAlSA2JpbxIgCgtkZXZpY2VUb2tlbhgFIAEoCVILZGV2aWNlVG9rZW4SGgoIdmVyaWZpZWQYBiABKAhSCHZlcmlmaWVkEi4KEnN1YnNjcmlwdGlvblN0YXR1cxgHIAEoCVISc3Vic2NyaXB0aW9uU3RhdHVzEjgKCWNyZWF0ZWRBdBgIIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCWNyZWF0ZWRBdBIsChFwcm9maWxlUGljdHVyZVVybBgJIAEoCVIRcHJvZmlsZVBpY3R1cmVVcmw=');
@$core.Deprecated('Use minimalUserInfoDescriptor instead')
const MinimalUserInfo$json = const {
  '1': 'MinimalUserInfo',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'userName', '3': 2, '4': 1, '5': 9, '10': 'userName'},
    const {'1': 'bio', '3': 3, '4': 1, '5': 9, '10': 'bio'},
    const {'1': 'verified', '3': 4, '4': 1, '5': 8, '10': 'verified'},
    const {'1': 'createdAt', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    const {'1': 'profilePictureUrl', '3': 6, '4': 1, '5': 9, '10': 'profilePictureUrl'},
  ],
};

/// Descriptor for `MinimalUserInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List minimalUserInfoDescriptor = $convert.base64Decode('Cg9NaW5pbWFsVXNlckluZm8SDgoCaWQYASABKAlSAmlkEhoKCHVzZXJOYW1lGAIgASgJUgh1c2VyTmFtZRIQCgNiaW8YAyABKAlSA2JpbxIaCgh2ZXJpZmllZBgEIAEoCFIIdmVyaWZpZWQSOAoJY3JlYXRlZEF0GAUgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIJY3JlYXRlZEF0EiwKEXByb2ZpbGVQaWN0dXJlVXJsGAYgASgJUhFwcm9maWxlUGljdHVyZVVybA==');
