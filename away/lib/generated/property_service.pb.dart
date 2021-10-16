///
//  Generated code. Do not modify.
//  source: property_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/timestamp.pb.dart' as $2;
import 'user_service.pb.dart' as $0;

class Property extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Property', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'property.service'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userID', protoName: 'userID')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'propertyTypeID', $pb.PbFieldType.O3, protoName: 'propertyTypeID')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'propertyType', protoName: 'propertyType')
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'propertyCategoryID', $pb.PbFieldType.O3, protoName: 'propertyCategoryID')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'propertyCategory', protoName: 'propertyCategory')
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'propertyUsageID', $pb.PbFieldType.O3, protoName: 'propertyUsageID')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'propertyUsage', protoName: 'propertyUsage')
    ..a<$core.int>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bedrooms', $pb.PbFieldType.O3)
    ..a<$core.int>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bathrooms', $pb.PbFieldType.O3)
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'surburb')
    ..aOS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'town')
    ..aOS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOS(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..aOS(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'currency')
    ..aOB(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'available')
    ..a<$core.double>(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'price', $pb.PbFieldType.OF)
    ..a<$core.double>(18, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deposit', $pb.PbFieldType.OF)
    ..a<$core.double>(19, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sharingPrice', $pb.PbFieldType.OF, protoName: 'sharingPrice')
    ..aOB(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'promoted')
    ..aOM<$2.Timestamp>(21, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'postedDate', protoName: 'postedDate', subBuilder: $2.Timestamp.create)
    ..aOB(22, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'petsAllowed', protoName: 'petsAllowed')
    ..aOB(23, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'freeWifi', protoName: 'freeWifi')
    ..aOB(24, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'waterIncluded', protoName: 'waterIncluded')
    ..aOB(25, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'electricityIncluded', protoName: 'electricityIncluded')
    ..a<$core.double>(26, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'latitude', $pb.PbFieldType.OF)
    ..a<$core.double>(27, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'longitude', $pb.PbFieldType.OF)
    ..pc<Photo>(28, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'photos', $pb.PbFieldType.PM, subBuilder: Photo.create)
    ..hasRequiredFields = false
  ;

  Property._() : super();
  factory Property({
    $core.String? id,
    $core.String? userID,
    $core.int? propertyTypeID,
    $core.String? propertyType,
    $core.int? propertyCategoryID,
    $core.String? propertyCategory,
    $core.int? propertyUsageID,
    $core.String? propertyUsage,
    $core.int? bedrooms,
    $core.int? bathrooms,
    $core.String? surburb,
    $core.String? town,
    $core.String? title,
    $core.String? description,
    $core.String? currency,
    $core.bool? available,
    $core.double? price,
    $core.double? deposit,
    $core.double? sharingPrice,
    $core.bool? promoted,
    $2.Timestamp? postedDate,
    $core.bool? petsAllowed,
    $core.bool? freeWifi,
    $core.bool? waterIncluded,
    $core.bool? electricityIncluded,
    $core.double? latitude,
    $core.double? longitude,
    $core.Iterable<Photo>? photos,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (userID != null) {
      _result.userID = userID;
    }
    if (propertyTypeID != null) {
      _result.propertyTypeID = propertyTypeID;
    }
    if (propertyType != null) {
      _result.propertyType = propertyType;
    }
    if (propertyCategoryID != null) {
      _result.propertyCategoryID = propertyCategoryID;
    }
    if (propertyCategory != null) {
      _result.propertyCategory = propertyCategory;
    }
    if (propertyUsageID != null) {
      _result.propertyUsageID = propertyUsageID;
    }
    if (propertyUsage != null) {
      _result.propertyUsage = propertyUsage;
    }
    if (bedrooms != null) {
      _result.bedrooms = bedrooms;
    }
    if (bathrooms != null) {
      _result.bathrooms = bathrooms;
    }
    if (surburb != null) {
      _result.surburb = surburb;
    }
    if (town != null) {
      _result.town = town;
    }
    if (title != null) {
      _result.title = title;
    }
    if (description != null) {
      _result.description = description;
    }
    if (currency != null) {
      _result.currency = currency;
    }
    if (available != null) {
      _result.available = available;
    }
    if (price != null) {
      _result.price = price;
    }
    if (deposit != null) {
      _result.deposit = deposit;
    }
    if (sharingPrice != null) {
      _result.sharingPrice = sharingPrice;
    }
    if (promoted != null) {
      _result.promoted = promoted;
    }
    if (postedDate != null) {
      _result.postedDate = postedDate;
    }
    if (petsAllowed != null) {
      _result.petsAllowed = petsAllowed;
    }
    if (freeWifi != null) {
      _result.freeWifi = freeWifi;
    }
    if (waterIncluded != null) {
      _result.waterIncluded = waterIncluded;
    }
    if (electricityIncluded != null) {
      _result.electricityIncluded = electricityIncluded;
    }
    if (latitude != null) {
      _result.latitude = latitude;
    }
    if (longitude != null) {
      _result.longitude = longitude;
    }
    if (photos != null) {
      _result.photos.addAll(photos);
    }
    return _result;
  }
  factory Property.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Property.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Property clone() => Property()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Property copyWith(void Function(Property) updates) => super.copyWith((message) => updates(message as Property)) as Property; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Property create() => Property._();
  Property createEmptyInstance() => create();
  static $pb.PbList<Property> createRepeated() => $pb.PbList<Property>();
  @$core.pragma('dart2js:noInline')
  static Property getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Property>(create);
  static Property? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get userID => $_getSZ(1);
  @$pb.TagNumber(2)
  set userID($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserID() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserID() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get propertyTypeID => $_getIZ(2);
  @$pb.TagNumber(3)
  set propertyTypeID($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPropertyTypeID() => $_has(2);
  @$pb.TagNumber(3)
  void clearPropertyTypeID() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get propertyType => $_getSZ(3);
  @$pb.TagNumber(4)
  set propertyType($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPropertyType() => $_has(3);
  @$pb.TagNumber(4)
  void clearPropertyType() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get propertyCategoryID => $_getIZ(4);
  @$pb.TagNumber(5)
  set propertyCategoryID($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPropertyCategoryID() => $_has(4);
  @$pb.TagNumber(5)
  void clearPropertyCategoryID() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get propertyCategory => $_getSZ(5);
  @$pb.TagNumber(6)
  set propertyCategory($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPropertyCategory() => $_has(5);
  @$pb.TagNumber(6)
  void clearPropertyCategory() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get propertyUsageID => $_getIZ(6);
  @$pb.TagNumber(7)
  set propertyUsageID($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasPropertyUsageID() => $_has(6);
  @$pb.TagNumber(7)
  void clearPropertyUsageID() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get propertyUsage => $_getSZ(7);
  @$pb.TagNumber(8)
  set propertyUsage($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasPropertyUsage() => $_has(7);
  @$pb.TagNumber(8)
  void clearPropertyUsage() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get bedrooms => $_getIZ(8);
  @$pb.TagNumber(9)
  set bedrooms($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasBedrooms() => $_has(8);
  @$pb.TagNumber(9)
  void clearBedrooms() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get bathrooms => $_getIZ(9);
  @$pb.TagNumber(10)
  set bathrooms($core.int v) { $_setSignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasBathrooms() => $_has(9);
  @$pb.TagNumber(10)
  void clearBathrooms() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get surburb => $_getSZ(10);
  @$pb.TagNumber(11)
  set surburb($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasSurburb() => $_has(10);
  @$pb.TagNumber(11)
  void clearSurburb() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get town => $_getSZ(11);
  @$pb.TagNumber(12)
  set town($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasTown() => $_has(11);
  @$pb.TagNumber(12)
  void clearTown() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get title => $_getSZ(12);
  @$pb.TagNumber(13)
  set title($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasTitle() => $_has(12);
  @$pb.TagNumber(13)
  void clearTitle() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get description => $_getSZ(13);
  @$pb.TagNumber(14)
  set description($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasDescription() => $_has(13);
  @$pb.TagNumber(14)
  void clearDescription() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get currency => $_getSZ(14);
  @$pb.TagNumber(15)
  set currency($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasCurrency() => $_has(14);
  @$pb.TagNumber(15)
  void clearCurrency() => clearField(15);

  @$pb.TagNumber(16)
  $core.bool get available => $_getBF(15);
  @$pb.TagNumber(16)
  set available($core.bool v) { $_setBool(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasAvailable() => $_has(15);
  @$pb.TagNumber(16)
  void clearAvailable() => clearField(16);

  @$pb.TagNumber(17)
  $core.double get price => $_getN(16);
  @$pb.TagNumber(17)
  set price($core.double v) { $_setFloat(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasPrice() => $_has(16);
  @$pb.TagNumber(17)
  void clearPrice() => clearField(17);

  @$pb.TagNumber(18)
  $core.double get deposit => $_getN(17);
  @$pb.TagNumber(18)
  set deposit($core.double v) { $_setFloat(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasDeposit() => $_has(17);
  @$pb.TagNumber(18)
  void clearDeposit() => clearField(18);

  @$pb.TagNumber(19)
  $core.double get sharingPrice => $_getN(18);
  @$pb.TagNumber(19)
  set sharingPrice($core.double v) { $_setFloat(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasSharingPrice() => $_has(18);
  @$pb.TagNumber(19)
  void clearSharingPrice() => clearField(19);

  @$pb.TagNumber(20)
  $core.bool get promoted => $_getBF(19);
  @$pb.TagNumber(20)
  set promoted($core.bool v) { $_setBool(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasPromoted() => $_has(19);
  @$pb.TagNumber(20)
  void clearPromoted() => clearField(20);

  @$pb.TagNumber(21)
  $2.Timestamp get postedDate => $_getN(20);
  @$pb.TagNumber(21)
  set postedDate($2.Timestamp v) { setField(21, v); }
  @$pb.TagNumber(21)
  $core.bool hasPostedDate() => $_has(20);
  @$pb.TagNumber(21)
  void clearPostedDate() => clearField(21);
  @$pb.TagNumber(21)
  $2.Timestamp ensurePostedDate() => $_ensure(20);

  @$pb.TagNumber(22)
  $core.bool get petsAllowed => $_getBF(21);
  @$pb.TagNumber(22)
  set petsAllowed($core.bool v) { $_setBool(21, v); }
  @$pb.TagNumber(22)
  $core.bool hasPetsAllowed() => $_has(21);
  @$pb.TagNumber(22)
  void clearPetsAllowed() => clearField(22);

  @$pb.TagNumber(23)
  $core.bool get freeWifi => $_getBF(22);
  @$pb.TagNumber(23)
  set freeWifi($core.bool v) { $_setBool(22, v); }
  @$pb.TagNumber(23)
  $core.bool hasFreeWifi() => $_has(22);
  @$pb.TagNumber(23)
  void clearFreeWifi() => clearField(23);

  @$pb.TagNumber(24)
  $core.bool get waterIncluded => $_getBF(23);
  @$pb.TagNumber(24)
  set waterIncluded($core.bool v) { $_setBool(23, v); }
  @$pb.TagNumber(24)
  $core.bool hasWaterIncluded() => $_has(23);
  @$pb.TagNumber(24)
  void clearWaterIncluded() => clearField(24);

  @$pb.TagNumber(25)
  $core.bool get electricityIncluded => $_getBF(24);
  @$pb.TagNumber(25)
  set electricityIncluded($core.bool v) { $_setBool(24, v); }
  @$pb.TagNumber(25)
  $core.bool hasElectricityIncluded() => $_has(24);
  @$pb.TagNumber(25)
  void clearElectricityIncluded() => clearField(25);

  @$pb.TagNumber(26)
  $core.double get latitude => $_getN(25);
  @$pb.TagNumber(26)
  set latitude($core.double v) { $_setFloat(25, v); }
  @$pb.TagNumber(26)
  $core.bool hasLatitude() => $_has(25);
  @$pb.TagNumber(26)
  void clearLatitude() => clearField(26);

  @$pb.TagNumber(27)
  $core.double get longitude => $_getN(26);
  @$pb.TagNumber(27)
  set longitude($core.double v) { $_setFloat(26, v); }
  @$pb.TagNumber(27)
  $core.bool hasLongitude() => $_has(26);
  @$pb.TagNumber(27)
  void clearLongitude() => clearField(27);

  @$pb.TagNumber(28)
  $core.List<Photo> get photos => $_getList(27);
}

class MinimalProperty extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MinimalProperty', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'property.service'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'propertyTypeID', $pb.PbFieldType.O3, protoName: 'propertyTypeID')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'propertyType', protoName: 'propertyType')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'propertyCategoryID', $pb.PbFieldType.O3, protoName: 'propertyCategoryID')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'propertyCategory', protoName: 'propertyCategory')
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'propertyUsageID', $pb.PbFieldType.O3, protoName: 'propertyUsageID')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'propertyUsage', protoName: 'propertyUsage')
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bedrooms', $pb.PbFieldType.O3)
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'currency')
    ..a<$core.double>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'price', $pb.PbFieldType.OF)
    ..aOB(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'promoted')
    ..aOM<$2.Timestamp>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'postedDate', protoName: 'postedDate', subBuilder: $2.Timestamp.create)
    ..pc<Photo>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'photos', $pb.PbFieldType.PM, subBuilder: Photo.create)
    ..aOS(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userID', protoName: 'userID')
    ..a<$core.double>(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'latitude', $pb.PbFieldType.OF)
    ..a<$core.double>(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'longitude', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  MinimalProperty._() : super();
  factory MinimalProperty({
    $core.String? id,
    $core.int? propertyTypeID,
    $core.String? propertyType,
    $core.int? propertyCategoryID,
    $core.String? propertyCategory,
    $core.int? propertyUsageID,
    $core.String? propertyUsage,
    $core.int? bedrooms,
    $core.String? title,
    $core.String? currency,
    $core.double? price,
    $core.bool? promoted,
    $2.Timestamp? postedDate,
    $core.Iterable<Photo>? photos,
    $core.String? userID,
    $core.double? latitude,
    $core.double? longitude,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (propertyTypeID != null) {
      _result.propertyTypeID = propertyTypeID;
    }
    if (propertyType != null) {
      _result.propertyType = propertyType;
    }
    if (propertyCategoryID != null) {
      _result.propertyCategoryID = propertyCategoryID;
    }
    if (propertyCategory != null) {
      _result.propertyCategory = propertyCategory;
    }
    if (propertyUsageID != null) {
      _result.propertyUsageID = propertyUsageID;
    }
    if (propertyUsage != null) {
      _result.propertyUsage = propertyUsage;
    }
    if (bedrooms != null) {
      _result.bedrooms = bedrooms;
    }
    if (title != null) {
      _result.title = title;
    }
    if (currency != null) {
      _result.currency = currency;
    }
    if (price != null) {
      _result.price = price;
    }
    if (promoted != null) {
      _result.promoted = promoted;
    }
    if (postedDate != null) {
      _result.postedDate = postedDate;
    }
    if (photos != null) {
      _result.photos.addAll(photos);
    }
    if (userID != null) {
      _result.userID = userID;
    }
    if (latitude != null) {
      _result.latitude = latitude;
    }
    if (longitude != null) {
      _result.longitude = longitude;
    }
    return _result;
  }
  factory MinimalProperty.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MinimalProperty.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MinimalProperty clone() => MinimalProperty()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MinimalProperty copyWith(void Function(MinimalProperty) updates) => super.copyWith((message) => updates(message as MinimalProperty)) as MinimalProperty; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MinimalProperty create() => MinimalProperty._();
  MinimalProperty createEmptyInstance() => create();
  static $pb.PbList<MinimalProperty> createRepeated() => $pb.PbList<MinimalProperty>();
  @$core.pragma('dart2js:noInline')
  static MinimalProperty getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MinimalProperty>(create);
  static MinimalProperty? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get propertyTypeID => $_getIZ(1);
  @$pb.TagNumber(2)
  set propertyTypeID($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPropertyTypeID() => $_has(1);
  @$pb.TagNumber(2)
  void clearPropertyTypeID() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get propertyType => $_getSZ(2);
  @$pb.TagNumber(3)
  set propertyType($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPropertyType() => $_has(2);
  @$pb.TagNumber(3)
  void clearPropertyType() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get propertyCategoryID => $_getIZ(3);
  @$pb.TagNumber(4)
  set propertyCategoryID($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPropertyCategoryID() => $_has(3);
  @$pb.TagNumber(4)
  void clearPropertyCategoryID() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get propertyCategory => $_getSZ(4);
  @$pb.TagNumber(5)
  set propertyCategory($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPropertyCategory() => $_has(4);
  @$pb.TagNumber(5)
  void clearPropertyCategory() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get propertyUsageID => $_getIZ(5);
  @$pb.TagNumber(6)
  set propertyUsageID($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPropertyUsageID() => $_has(5);
  @$pb.TagNumber(6)
  void clearPropertyUsageID() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get propertyUsage => $_getSZ(6);
  @$pb.TagNumber(7)
  set propertyUsage($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasPropertyUsage() => $_has(6);
  @$pb.TagNumber(7)
  void clearPropertyUsage() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get bedrooms => $_getIZ(7);
  @$pb.TagNumber(8)
  set bedrooms($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasBedrooms() => $_has(7);
  @$pb.TagNumber(8)
  void clearBedrooms() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get title => $_getSZ(8);
  @$pb.TagNumber(9)
  set title($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasTitle() => $_has(8);
  @$pb.TagNumber(9)
  void clearTitle() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get currency => $_getSZ(9);
  @$pb.TagNumber(10)
  set currency($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasCurrency() => $_has(9);
  @$pb.TagNumber(10)
  void clearCurrency() => clearField(10);

  @$pb.TagNumber(11)
  $core.double get price => $_getN(10);
  @$pb.TagNumber(11)
  set price($core.double v) { $_setFloat(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasPrice() => $_has(10);
  @$pb.TagNumber(11)
  void clearPrice() => clearField(11);

  @$pb.TagNumber(12)
  $core.bool get promoted => $_getBF(11);
  @$pb.TagNumber(12)
  set promoted($core.bool v) { $_setBool(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasPromoted() => $_has(11);
  @$pb.TagNumber(12)
  void clearPromoted() => clearField(12);

  @$pb.TagNumber(13)
  $2.Timestamp get postedDate => $_getN(12);
  @$pb.TagNumber(13)
  set postedDate($2.Timestamp v) { setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasPostedDate() => $_has(12);
  @$pb.TagNumber(13)
  void clearPostedDate() => clearField(13);
  @$pb.TagNumber(13)
  $2.Timestamp ensurePostedDate() => $_ensure(12);

  @$pb.TagNumber(14)
  $core.List<Photo> get photos => $_getList(13);

  @$pb.TagNumber(15)
  $core.String get userID => $_getSZ(14);
  @$pb.TagNumber(15)
  set userID($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasUserID() => $_has(14);
  @$pb.TagNumber(15)
  void clearUserID() => clearField(15);

  @$pb.TagNumber(16)
  $core.double get latitude => $_getN(15);
  @$pb.TagNumber(16)
  set latitude($core.double v) { $_setFloat(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasLatitude() => $_has(15);
  @$pb.TagNumber(16)
  void clearLatitude() => clearField(16);

  @$pb.TagNumber(17)
  $core.double get longitude => $_getN(16);
  @$pb.TagNumber(17)
  set longitude($core.double v) { $_setFloat(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasLongitude() => $_has(16);
  @$pb.TagNumber(17)
  void clearLongitude() => clearField(17);
}

class Photo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Photo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'property.service'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'url')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'propertyID', protoName: 'propertyID')
    ..hasRequiredFields = false
  ;

  Photo._() : super();
  factory Photo({
    $core.String? id,
    $core.String? url,
    $core.String? propertyID,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (url != null) {
      _result.url = url;
    }
    if (propertyID != null) {
      _result.propertyID = propertyID;
    }
    return _result;
  }
  factory Photo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Photo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Photo clone() => Photo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Photo copyWith(void Function(Photo) updates) => super.copyWith((message) => updates(message as Photo)) as Photo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Photo create() => Photo._();
  Photo createEmptyInstance() => create();
  static $pb.PbList<Photo> createRepeated() => $pb.PbList<Photo>();
  @$core.pragma('dart2js:noInline')
  static Photo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Photo>(create);
  static Photo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get url => $_getSZ(1);
  @$pb.TagNumber(2)
  set url($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearUrl() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get propertyID => $_getSZ(2);
  @$pb.TagNumber(3)
  set propertyID($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPropertyID() => $_has(2);
  @$pb.TagNumber(3)
  void clearPropertyID() => clearField(3);
}

class FeaturedAreasRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FeaturedAreasRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'property.service'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'country')
    ..hasRequiredFields = false
  ;

  FeaturedAreasRequest._() : super();
  factory FeaturedAreasRequest({
    $core.String? country,
  }) {
    final _result = create();
    if (country != null) {
      _result.country = country;
    }
    return _result;
  }
  factory FeaturedAreasRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FeaturedAreasRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FeaturedAreasRequest clone() => FeaturedAreasRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FeaturedAreasRequest copyWith(void Function(FeaturedAreasRequest) updates) => super.copyWith((message) => updates(message as FeaturedAreasRequest)) as FeaturedAreasRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FeaturedAreasRequest create() => FeaturedAreasRequest._();
  FeaturedAreasRequest createEmptyInstance() => create();
  static $pb.PbList<FeaturedAreasRequest> createRepeated() => $pb.PbList<FeaturedAreasRequest>();
  @$core.pragma('dart2js:noInline')
  static FeaturedAreasRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FeaturedAreasRequest>(create);
  static FeaturedAreasRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get country => $_getSZ(0);
  @$pb.TagNumber(1)
  set country($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCountry() => $_has(0);
  @$pb.TagNumber(1)
  void clearCountry() => clearField(1);
}

class FeaturedAreasResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FeaturedAreasResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'property.service'), createEmptyInstance: create)
    ..pc<FeaturedArea>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'featuredAreas', $pb.PbFieldType.PM, protoName: 'featuredAreas', subBuilder: FeaturedArea.create)
    ..hasRequiredFields = false
  ;

  FeaturedAreasResponse._() : super();
  factory FeaturedAreasResponse({
    $core.Iterable<FeaturedArea>? featuredAreas,
  }) {
    final _result = create();
    if (featuredAreas != null) {
      _result.featuredAreas.addAll(featuredAreas);
    }
    return _result;
  }
  factory FeaturedAreasResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FeaturedAreasResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FeaturedAreasResponse clone() => FeaturedAreasResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FeaturedAreasResponse copyWith(void Function(FeaturedAreasResponse) updates) => super.copyWith((message) => updates(message as FeaturedAreasResponse)) as FeaturedAreasResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FeaturedAreasResponse create() => FeaturedAreasResponse._();
  FeaturedAreasResponse createEmptyInstance() => create();
  static $pb.PbList<FeaturedAreasResponse> createRepeated() => $pb.PbList<FeaturedAreasResponse>();
  @$core.pragma('dart2js:noInline')
  static FeaturedAreasResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FeaturedAreasResponse>(create);
  static FeaturedAreasResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<FeaturedArea> get featuredAreas => $_getList(0);
}

class FeaturedArea extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FeaturedArea', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'property.service'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'photoURL', protoName: 'photoURL')
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'latitude', $pb.PbFieldType.OF)
    ..a<$core.double>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'longitude', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  FeaturedArea._() : super();
  factory FeaturedArea({
    $core.String? title,
    $core.String? photoURL,
    $core.double? latitude,
    $core.double? longitude,
  }) {
    final _result = create();
    if (title != null) {
      _result.title = title;
    }
    if (photoURL != null) {
      _result.photoURL = photoURL;
    }
    if (latitude != null) {
      _result.latitude = latitude;
    }
    if (longitude != null) {
      _result.longitude = longitude;
    }
    return _result;
  }
  factory FeaturedArea.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FeaturedArea.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FeaturedArea clone() => FeaturedArea()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FeaturedArea copyWith(void Function(FeaturedArea) updates) => super.copyWith((message) => updates(message as FeaturedArea)) as FeaturedArea; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FeaturedArea create() => FeaturedArea._();
  FeaturedArea createEmptyInstance() => create();
  static $pb.PbList<FeaturedArea> createRepeated() => $pb.PbList<FeaturedArea>();
  @$core.pragma('dart2js:noInline')
  static FeaturedArea getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FeaturedArea>(create);
  static FeaturedArea? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get photoURL => $_getSZ(1);
  @$pb.TagNumber(2)
  set photoURL($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPhotoURL() => $_has(1);
  @$pb.TagNumber(2)
  void clearPhotoURL() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get latitude => $_getN(2);
  @$pb.TagNumber(3)
  set latitude($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLatitude() => $_has(2);
  @$pb.TagNumber(3)
  void clearLatitude() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get longitude => $_getN(3);
  @$pb.TagNumber(4)
  set longitude($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLongitude() => $_has(3);
  @$pb.TagNumber(4)
  void clearLongitude() => clearField(4);
}

class PromotedRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PromotedRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'property.service'), createEmptyInstance: create)
    ..a<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'latitude', $pb.PbFieldType.OF)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'longitude', $pb.PbFieldType.OF)
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'radius', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  PromotedRequest._() : super();
  factory PromotedRequest({
    $core.double? latitude,
    $core.double? longitude,
    $core.double? radius,
  }) {
    final _result = create();
    if (latitude != null) {
      _result.latitude = latitude;
    }
    if (longitude != null) {
      _result.longitude = longitude;
    }
    if (radius != null) {
      _result.radius = radius;
    }
    return _result;
  }
  factory PromotedRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PromotedRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PromotedRequest clone() => PromotedRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PromotedRequest copyWith(void Function(PromotedRequest) updates) => super.copyWith((message) => updates(message as PromotedRequest)) as PromotedRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PromotedRequest create() => PromotedRequest._();
  PromotedRequest createEmptyInstance() => create();
  static $pb.PbList<PromotedRequest> createRepeated() => $pb.PbList<PromotedRequest>();
  @$core.pragma('dart2js:noInline')
  static PromotedRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PromotedRequest>(create);
  static PromotedRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get latitude => $_getN(0);
  @$pb.TagNumber(1)
  set latitude($core.double v) { $_setFloat(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLatitude() => $_has(0);
  @$pb.TagNumber(1)
  void clearLatitude() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get longitude => $_getN(1);
  @$pb.TagNumber(2)
  set longitude($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLongitude() => $_has(1);
  @$pb.TagNumber(2)
  void clearLongitude() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get radius => $_getN(2);
  @$pb.TagNumber(3)
  set radius($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRadius() => $_has(2);
  @$pb.TagNumber(3)
  void clearRadius() => clearField(3);
}

class PromotedResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PromotedResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'property.service'), createEmptyInstance: create)
    ..aOM<SingleMinimalProperty>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'property', subBuilder: SingleMinimalProperty.create)
    ..hasRequiredFields = false
  ;

  PromotedResponse._() : super();
  factory PromotedResponse({
    SingleMinimalProperty? property,
  }) {
    final _result = create();
    if (property != null) {
      _result.property = property;
    }
    return _result;
  }
  factory PromotedResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PromotedResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PromotedResponse clone() => PromotedResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PromotedResponse copyWith(void Function(PromotedResponse) updates) => super.copyWith((message) => updates(message as PromotedResponse)) as PromotedResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PromotedResponse create() => PromotedResponse._();
  PromotedResponse createEmptyInstance() => create();
  static $pb.PbList<PromotedResponse> createRepeated() => $pb.PbList<PromotedResponse>();
  @$core.pragma('dart2js:noInline')
  static PromotedResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PromotedResponse>(create);
  static PromotedResponse? _defaultInstance;

  @$pb.TagNumber(1)
  SingleMinimalProperty get property => $_getN(0);
  @$pb.TagNumber(1)
  set property(SingleMinimalProperty v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasProperty() => $_has(0);
  @$pb.TagNumber(1)
  void clearProperty() => clearField(1);
  @$pb.TagNumber(1)
  SingleMinimalProperty ensureProperty() => $_ensure(0);
}

class DeletePropertyRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeletePropertyRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'property.service'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'propertyID', protoName: 'propertyID')
    ..hasRequiredFields = false
  ;

  DeletePropertyRequest._() : super();
  factory DeletePropertyRequest({
    $core.String? propertyID,
  }) {
    final _result = create();
    if (propertyID != null) {
      _result.propertyID = propertyID;
    }
    return _result;
  }
  factory DeletePropertyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeletePropertyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeletePropertyRequest clone() => DeletePropertyRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeletePropertyRequest copyWith(void Function(DeletePropertyRequest) updates) => super.copyWith((message) => updates(message as DeletePropertyRequest)) as DeletePropertyRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeletePropertyRequest create() => DeletePropertyRequest._();
  DeletePropertyRequest createEmptyInstance() => create();
  static $pb.PbList<DeletePropertyRequest> createRepeated() => $pb.PbList<DeletePropertyRequest>();
  @$core.pragma('dart2js:noInline')
  static DeletePropertyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeletePropertyRequest>(create);
  static DeletePropertyRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get propertyID => $_getSZ(0);
  @$pb.TagNumber(1)
  set propertyID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPropertyID() => $_has(0);
  @$pb.TagNumber(1)
  void clearPropertyID() => clearField(1);
}

class DeletePropertyResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeletePropertyResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'property.service'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status')
    ..hasRequiredFields = false
  ;

  DeletePropertyResponse._() : super();
  factory DeletePropertyResponse({
    $core.bool? status,
  }) {
    final _result = create();
    if (status != null) {
      _result.status = status;
    }
    return _result;
  }
  factory DeletePropertyResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeletePropertyResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeletePropertyResponse clone() => DeletePropertyResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeletePropertyResponse copyWith(void Function(DeletePropertyResponse) updates) => super.copyWith((message) => updates(message as DeletePropertyResponse)) as DeletePropertyResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeletePropertyResponse create() => DeletePropertyResponse._();
  DeletePropertyResponse createEmptyInstance() => create();
  static $pb.PbList<DeletePropertyResponse> createRepeated() => $pb.PbList<DeletePropertyResponse>();
  @$core.pragma('dart2js:noInline')
  static DeletePropertyResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeletePropertyResponse>(create);
  static DeletePropertyResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get status => $_getBF(0);
  @$pb.TagNumber(1)
  set status($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class GetSinglePropertyRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetSinglePropertyRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'property.service'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  GetSinglePropertyRequest._() : super();
  factory GetSinglePropertyRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory GetSinglePropertyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSinglePropertyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSinglePropertyRequest clone() => GetSinglePropertyRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSinglePropertyRequest copyWith(void Function(GetSinglePropertyRequest) updates) => super.copyWith((message) => updates(message as GetSinglePropertyRequest)) as GetSinglePropertyRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetSinglePropertyRequest create() => GetSinglePropertyRequest._();
  GetSinglePropertyRequest createEmptyInstance() => create();
  static $pb.PbList<GetSinglePropertyRequest> createRepeated() => $pb.PbList<GetSinglePropertyRequest>();
  @$core.pragma('dart2js:noInline')
  static GetSinglePropertyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSinglePropertyRequest>(create);
  static GetSinglePropertyRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class SinglePropertyResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SinglePropertyResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'property.service'), createEmptyInstance: create)
    ..aOM<Property>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'property', subBuilder: Property.create)
    ..aOM<$0.GetUserResponse>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'owner', subBuilder: $0.GetUserResponse.create)
    ..hasRequiredFields = false
  ;

  SinglePropertyResponse._() : super();
  factory SinglePropertyResponse({
    Property? property,
    $0.GetUserResponse? owner,
  }) {
    final _result = create();
    if (property != null) {
      _result.property = property;
    }
    if (owner != null) {
      _result.owner = owner;
    }
    return _result;
  }
  factory SinglePropertyResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SinglePropertyResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SinglePropertyResponse clone() => SinglePropertyResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SinglePropertyResponse copyWith(void Function(SinglePropertyResponse) updates) => super.copyWith((message) => updates(message as SinglePropertyResponse)) as SinglePropertyResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SinglePropertyResponse create() => SinglePropertyResponse._();
  SinglePropertyResponse createEmptyInstance() => create();
  static $pb.PbList<SinglePropertyResponse> createRepeated() => $pb.PbList<SinglePropertyResponse>();
  @$core.pragma('dart2js:noInline')
  static SinglePropertyResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SinglePropertyResponse>(create);
  static SinglePropertyResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Property get property => $_getN(0);
  @$pb.TagNumber(1)
  set property(Property v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasProperty() => $_has(0);
  @$pb.TagNumber(1)
  void clearProperty() => clearField(1);
  @$pb.TagNumber(1)
  Property ensureProperty() => $_ensure(0);

  @$pb.TagNumber(2)
  $0.GetUserResponse get owner => $_getN(1);
  @$pb.TagNumber(2)
  set owner($0.GetUserResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasOwner() => $_has(1);
  @$pb.TagNumber(2)
  void clearOwner() => clearField(2);
  @$pb.TagNumber(2)
  $0.GetUserResponse ensureOwner() => $_ensure(1);
}

class GetMultiplePropertyRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetMultiplePropertyRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'property.service'), createEmptyInstance: create)
    ..a<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'latitude', $pb.PbFieldType.OF)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'longitude', $pb.PbFieldType.OF)
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'radius', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  GetMultiplePropertyRequest._() : super();
  factory GetMultiplePropertyRequest({
    $core.double? latitude,
    $core.double? longitude,
    $core.double? radius,
  }) {
    final _result = create();
    if (latitude != null) {
      _result.latitude = latitude;
    }
    if (longitude != null) {
      _result.longitude = longitude;
    }
    if (radius != null) {
      _result.radius = radius;
    }
    return _result;
  }
  factory GetMultiplePropertyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetMultiplePropertyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetMultiplePropertyRequest clone() => GetMultiplePropertyRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetMultiplePropertyRequest copyWith(void Function(GetMultiplePropertyRequest) updates) => super.copyWith((message) => updates(message as GetMultiplePropertyRequest)) as GetMultiplePropertyRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetMultiplePropertyRequest create() => GetMultiplePropertyRequest._();
  GetMultiplePropertyRequest createEmptyInstance() => create();
  static $pb.PbList<GetMultiplePropertyRequest> createRepeated() => $pb.PbList<GetMultiplePropertyRequest>();
  @$core.pragma('dart2js:noInline')
  static GetMultiplePropertyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetMultiplePropertyRequest>(create);
  static GetMultiplePropertyRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get latitude => $_getN(0);
  @$pb.TagNumber(1)
  set latitude($core.double v) { $_setFloat(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLatitude() => $_has(0);
  @$pb.TagNumber(1)
  void clearLatitude() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get longitude => $_getN(1);
  @$pb.TagNumber(2)
  set longitude($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLongitude() => $_has(1);
  @$pb.TagNumber(2)
  void clearLongitude() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get radius => $_getN(2);
  @$pb.TagNumber(3)
  set radius($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRadius() => $_has(2);
  @$pb.TagNumber(3)
  void clearRadius() => clearField(3);
}

class GetMultiplePropertyResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetMultiplePropertyResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'property.service'), createEmptyInstance: create)
    ..aOM<SinglePropertyResponse>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'response', subBuilder: SinglePropertyResponse.create)
    ..hasRequiredFields = false
  ;

  GetMultiplePropertyResponse._() : super();
  factory GetMultiplePropertyResponse({
    SinglePropertyResponse? response,
  }) {
    final _result = create();
    if (response != null) {
      _result.response = response;
    }
    return _result;
  }
  factory GetMultiplePropertyResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetMultiplePropertyResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetMultiplePropertyResponse clone() => GetMultiplePropertyResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetMultiplePropertyResponse copyWith(void Function(GetMultiplePropertyResponse) updates) => super.copyWith((message) => updates(message as GetMultiplePropertyResponse)) as GetMultiplePropertyResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetMultiplePropertyResponse create() => GetMultiplePropertyResponse._();
  GetMultiplePropertyResponse createEmptyInstance() => create();
  static $pb.PbList<GetMultiplePropertyResponse> createRepeated() => $pb.PbList<GetMultiplePropertyResponse>();
  @$core.pragma('dart2js:noInline')
  static GetMultiplePropertyResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetMultiplePropertyResponse>(create);
  static GetMultiplePropertyResponse? _defaultInstance;

  @$pb.TagNumber(1)
  SinglePropertyResponse get response => $_getN(0);
  @$pb.TagNumber(1)
  set response(SinglePropertyResponse v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResponse() => $_has(0);
  @$pb.TagNumber(1)
  void clearResponse() => clearField(1);
  @$pb.TagNumber(1)
  SinglePropertyResponse ensureResponse() => $_ensure(0);
}

class CreatePropertyRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreatePropertyRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'property.service'), createEmptyInstance: create)
    ..aOM<Property>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'property', subBuilder: Property.create)
    ..hasRequiredFields = false
  ;

  CreatePropertyRequest._() : super();
  factory CreatePropertyRequest({
    Property? property,
  }) {
    final _result = create();
    if (property != null) {
      _result.property = property;
    }
    return _result;
  }
  factory CreatePropertyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreatePropertyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreatePropertyRequest clone() => CreatePropertyRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreatePropertyRequest copyWith(void Function(CreatePropertyRequest) updates) => super.copyWith((message) => updates(message as CreatePropertyRequest)) as CreatePropertyRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreatePropertyRequest create() => CreatePropertyRequest._();
  CreatePropertyRequest createEmptyInstance() => create();
  static $pb.PbList<CreatePropertyRequest> createRepeated() => $pb.PbList<CreatePropertyRequest>();
  @$core.pragma('dart2js:noInline')
  static CreatePropertyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreatePropertyRequest>(create);
  static CreatePropertyRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Property get property => $_getN(0);
  @$pb.TagNumber(1)
  set property(Property v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasProperty() => $_has(0);
  @$pb.TagNumber(1)
  void clearProperty() => clearField(1);
  @$pb.TagNumber(1)
  Property ensureProperty() => $_ensure(0);
}

class GetMinimalPropertiesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetMinimalPropertiesRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'property.service'), createEmptyInstance: create)
    ..a<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'latitude', $pb.PbFieldType.OF)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'longitude', $pb.PbFieldType.OF)
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'radius', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  GetMinimalPropertiesRequest._() : super();
  factory GetMinimalPropertiesRequest({
    $core.double? latitude,
    $core.double? longitude,
    $core.double? radius,
  }) {
    final _result = create();
    if (latitude != null) {
      _result.latitude = latitude;
    }
    if (longitude != null) {
      _result.longitude = longitude;
    }
    if (radius != null) {
      _result.radius = radius;
    }
    return _result;
  }
  factory GetMinimalPropertiesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetMinimalPropertiesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetMinimalPropertiesRequest clone() => GetMinimalPropertiesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetMinimalPropertiesRequest copyWith(void Function(GetMinimalPropertiesRequest) updates) => super.copyWith((message) => updates(message as GetMinimalPropertiesRequest)) as GetMinimalPropertiesRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetMinimalPropertiesRequest create() => GetMinimalPropertiesRequest._();
  GetMinimalPropertiesRequest createEmptyInstance() => create();
  static $pb.PbList<GetMinimalPropertiesRequest> createRepeated() => $pb.PbList<GetMinimalPropertiesRequest>();
  @$core.pragma('dart2js:noInline')
  static GetMinimalPropertiesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetMinimalPropertiesRequest>(create);
  static GetMinimalPropertiesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get latitude => $_getN(0);
  @$pb.TagNumber(1)
  set latitude($core.double v) { $_setFloat(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLatitude() => $_has(0);
  @$pb.TagNumber(1)
  void clearLatitude() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get longitude => $_getN(1);
  @$pb.TagNumber(2)
  set longitude($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLongitude() => $_has(1);
  @$pb.TagNumber(2)
  void clearLongitude() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get radius => $_getN(2);
  @$pb.TagNumber(3)
  set radius($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRadius() => $_has(2);
  @$pb.TagNumber(3)
  void clearRadius() => clearField(3);
}

class GetMinimalPropertiesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetMinimalPropertiesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'property.service'), createEmptyInstance: create)
    ..aOM<SingleMinimalProperty>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'singleMinimalProperty', protoName: 'singleMinimalProperty', subBuilder: SingleMinimalProperty.create)
    ..hasRequiredFields = false
  ;

  GetMinimalPropertiesResponse._() : super();
  factory GetMinimalPropertiesResponse({
    SingleMinimalProperty? singleMinimalProperty,
  }) {
    final _result = create();
    if (singleMinimalProperty != null) {
      _result.singleMinimalProperty = singleMinimalProperty;
    }
    return _result;
  }
  factory GetMinimalPropertiesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetMinimalPropertiesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetMinimalPropertiesResponse clone() => GetMinimalPropertiesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetMinimalPropertiesResponse copyWith(void Function(GetMinimalPropertiesResponse) updates) => super.copyWith((message) => updates(message as GetMinimalPropertiesResponse)) as GetMinimalPropertiesResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetMinimalPropertiesResponse create() => GetMinimalPropertiesResponse._();
  GetMinimalPropertiesResponse createEmptyInstance() => create();
  static $pb.PbList<GetMinimalPropertiesResponse> createRepeated() => $pb.PbList<GetMinimalPropertiesResponse>();
  @$core.pragma('dart2js:noInline')
  static GetMinimalPropertiesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetMinimalPropertiesResponse>(create);
  static GetMinimalPropertiesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  SingleMinimalProperty get singleMinimalProperty => $_getN(0);
  @$pb.TagNumber(1)
  set singleMinimalProperty(SingleMinimalProperty v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSingleMinimalProperty() => $_has(0);
  @$pb.TagNumber(1)
  void clearSingleMinimalProperty() => clearField(1);
  @$pb.TagNumber(1)
  SingleMinimalProperty ensureSingleMinimalProperty() => $_ensure(0);
}

class SingleMinimalProperty extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SingleMinimalProperty', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'property.service'), createEmptyInstance: create)
    ..aOM<MinimalProperty>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'property', subBuilder: MinimalProperty.create)
    ..aOM<$0.GetUserResponse>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'owner', subBuilder: $0.GetUserResponse.create)
    ..hasRequiredFields = false
  ;

  SingleMinimalProperty._() : super();
  factory SingleMinimalProperty({
    MinimalProperty? property,
    $0.GetUserResponse? owner,
  }) {
    final _result = create();
    if (property != null) {
      _result.property = property;
    }
    if (owner != null) {
      _result.owner = owner;
    }
    return _result;
  }
  factory SingleMinimalProperty.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SingleMinimalProperty.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SingleMinimalProperty clone() => SingleMinimalProperty()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SingleMinimalProperty copyWith(void Function(SingleMinimalProperty) updates) => super.copyWith((message) => updates(message as SingleMinimalProperty)) as SingleMinimalProperty; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SingleMinimalProperty create() => SingleMinimalProperty._();
  SingleMinimalProperty createEmptyInstance() => create();
  static $pb.PbList<SingleMinimalProperty> createRepeated() => $pb.PbList<SingleMinimalProperty>();
  @$core.pragma('dart2js:noInline')
  static SingleMinimalProperty getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SingleMinimalProperty>(create);
  static SingleMinimalProperty? _defaultInstance;

  @$pb.TagNumber(1)
  MinimalProperty get property => $_getN(0);
  @$pb.TagNumber(1)
  set property(MinimalProperty v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasProperty() => $_has(0);
  @$pb.TagNumber(1)
  void clearProperty() => clearField(1);
  @$pb.TagNumber(1)
  MinimalProperty ensureProperty() => $_ensure(0);

  @$pb.TagNumber(2)
  $0.GetUserResponse get owner => $_getN(1);
  @$pb.TagNumber(2)
  set owner($0.GetUserResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasOwner() => $_has(1);
  @$pb.TagNumber(2)
  void clearOwner() => clearField(2);
  @$pb.TagNumber(2)
  $0.GetUserResponse ensureOwner() => $_ensure(1);
}

class GetUserPropertiesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetUserPropertiesRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'property.service'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userID', protoName: 'userID')
    ..hasRequiredFields = false
  ;

  GetUserPropertiesRequest._() : super();
  factory GetUserPropertiesRequest({
    $core.String? userID,
  }) {
    final _result = create();
    if (userID != null) {
      _result.userID = userID;
    }
    return _result;
  }
  factory GetUserPropertiesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetUserPropertiesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetUserPropertiesRequest clone() => GetUserPropertiesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetUserPropertiesRequest copyWith(void Function(GetUserPropertiesRequest) updates) => super.copyWith((message) => updates(message as GetUserPropertiesRequest)) as GetUserPropertiesRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetUserPropertiesRequest create() => GetUserPropertiesRequest._();
  GetUserPropertiesRequest createEmptyInstance() => create();
  static $pb.PbList<GetUserPropertiesRequest> createRepeated() => $pb.PbList<GetUserPropertiesRequest>();
  @$core.pragma('dart2js:noInline')
  static GetUserPropertiesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetUserPropertiesRequest>(create);
  static GetUserPropertiesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userID => $_getSZ(0);
  @$pb.TagNumber(1)
  set userID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserID() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserID() => clearField(1);
}

class GetUserPropertiesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetUserPropertiesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'property.service'), createEmptyInstance: create)
    ..pc<Property>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'properties', $pb.PbFieldType.PM, subBuilder: Property.create)
    ..hasRequiredFields = false
  ;

  GetUserPropertiesResponse._() : super();
  factory GetUserPropertiesResponse({
    $core.Iterable<Property>? properties,
  }) {
    final _result = create();
    if (properties != null) {
      _result.properties.addAll(properties);
    }
    return _result;
  }
  factory GetUserPropertiesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetUserPropertiesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetUserPropertiesResponse clone() => GetUserPropertiesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetUserPropertiesResponse copyWith(void Function(GetUserPropertiesResponse) updates) => super.copyWith((message) => updates(message as GetUserPropertiesResponse)) as GetUserPropertiesResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetUserPropertiesResponse create() => GetUserPropertiesResponse._();
  GetUserPropertiesResponse createEmptyInstance() => create();
  static $pb.PbList<GetUserPropertiesResponse> createRepeated() => $pb.PbList<GetUserPropertiesResponse>();
  @$core.pragma('dart2js:noInline')
  static GetUserPropertiesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetUserPropertiesResponse>(create);
  static GetUserPropertiesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Property> get properties => $_getList(0);
}

enum LocationSearchRequest_SearchOneof {
  query, 
  details, 
  notSet
}

class LocationSearchRequest extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, LocationSearchRequest_SearchOneof> _LocationSearchRequest_SearchOneofByTag = {
    1 : LocationSearchRequest_SearchOneof.query,
    2 : LocationSearchRequest_SearchOneof.details,
    0 : LocationSearchRequest_SearchOneof.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LocationSearchRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'property.service'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<LocationAutocompleteQuery>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'query', subBuilder: LocationAutocompleteQuery.create)
    ..aOM<LocationDetailsQuery>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'details', subBuilder: LocationDetailsQuery.create)
    ..hasRequiredFields = false
  ;

  LocationSearchRequest._() : super();
  factory LocationSearchRequest({
    LocationAutocompleteQuery? query,
    LocationDetailsQuery? details,
  }) {
    final _result = create();
    if (query != null) {
      _result.query = query;
    }
    if (details != null) {
      _result.details = details;
    }
    return _result;
  }
  factory LocationSearchRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LocationSearchRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LocationSearchRequest clone() => LocationSearchRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LocationSearchRequest copyWith(void Function(LocationSearchRequest) updates) => super.copyWith((message) => updates(message as LocationSearchRequest)) as LocationSearchRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LocationSearchRequest create() => LocationSearchRequest._();
  LocationSearchRequest createEmptyInstance() => create();
  static $pb.PbList<LocationSearchRequest> createRepeated() => $pb.PbList<LocationSearchRequest>();
  @$core.pragma('dart2js:noInline')
  static LocationSearchRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LocationSearchRequest>(create);
  static LocationSearchRequest? _defaultInstance;

  LocationSearchRequest_SearchOneof whichSearchOneof() => _LocationSearchRequest_SearchOneofByTag[$_whichOneof(0)]!;
  void clearSearchOneof() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  LocationAutocompleteQuery get query => $_getN(0);
  @$pb.TagNumber(1)
  set query(LocationAutocompleteQuery v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasQuery() => $_has(0);
  @$pb.TagNumber(1)
  void clearQuery() => clearField(1);
  @$pb.TagNumber(1)
  LocationAutocompleteQuery ensureQuery() => $_ensure(0);

  @$pb.TagNumber(2)
  LocationDetailsQuery get details => $_getN(1);
  @$pb.TagNumber(2)
  set details(LocationDetailsQuery v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDetails() => $_has(1);
  @$pb.TagNumber(2)
  void clearDetails() => clearField(2);
  @$pb.TagNumber(2)
  LocationDetailsQuery ensureDetails() => $_ensure(1);
}

class LocationAutocompleteQuery extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LocationAutocompleteQuery', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'property.service'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'text')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'countryCode', protoName: 'countryCode')
    ..hasRequiredFields = false
  ;

  LocationAutocompleteQuery._() : super();
  factory LocationAutocompleteQuery({
    $core.String? text,
    $core.String? countryCode,
  }) {
    final _result = create();
    if (text != null) {
      _result.text = text;
    }
    if (countryCode != null) {
      _result.countryCode = countryCode;
    }
    return _result;
  }
  factory LocationAutocompleteQuery.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LocationAutocompleteQuery.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LocationAutocompleteQuery clone() => LocationAutocompleteQuery()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LocationAutocompleteQuery copyWith(void Function(LocationAutocompleteQuery) updates) => super.copyWith((message) => updates(message as LocationAutocompleteQuery)) as LocationAutocompleteQuery; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LocationAutocompleteQuery create() => LocationAutocompleteQuery._();
  LocationAutocompleteQuery createEmptyInstance() => create();
  static $pb.PbList<LocationAutocompleteQuery> createRepeated() => $pb.PbList<LocationAutocompleteQuery>();
  @$core.pragma('dart2js:noInline')
  static LocationAutocompleteQuery getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LocationAutocompleteQuery>(create);
  static LocationAutocompleteQuery? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get text => $_getSZ(0);
  @$pb.TagNumber(1)
  set text($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasText() => $_has(0);
  @$pb.TagNumber(1)
  void clearText() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get countryCode => $_getSZ(1);
  @$pb.TagNumber(2)
  set countryCode($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCountryCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearCountryCode() => clearField(2);
}

class LocationDetailsQuery extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LocationDetailsQuery', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'property.service'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'placeID', protoName: 'placeID')
    ..hasRequiredFields = false
  ;

  LocationDetailsQuery._() : super();
  factory LocationDetailsQuery({
    $core.String? placeID,
  }) {
    final _result = create();
    if (placeID != null) {
      _result.placeID = placeID;
    }
    return _result;
  }
  factory LocationDetailsQuery.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LocationDetailsQuery.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LocationDetailsQuery clone() => LocationDetailsQuery()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LocationDetailsQuery copyWith(void Function(LocationDetailsQuery) updates) => super.copyWith((message) => updates(message as LocationDetailsQuery)) as LocationDetailsQuery; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LocationDetailsQuery create() => LocationDetailsQuery._();
  LocationDetailsQuery createEmptyInstance() => create();
  static $pb.PbList<LocationDetailsQuery> createRepeated() => $pb.PbList<LocationDetailsQuery>();
  @$core.pragma('dart2js:noInline')
  static LocationDetailsQuery getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LocationDetailsQuery>(create);
  static LocationDetailsQuery? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get placeID => $_getSZ(0);
  @$pb.TagNumber(1)
  set placeID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPlaceID() => $_has(0);
  @$pb.TagNumber(1)
  void clearPlaceID() => clearField(1);
}

enum LocationSearchResponse_ResponseOneof {
  details, 
  autocompleteResponse, 
  notSet
}

class LocationSearchResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, LocationSearchResponse_ResponseOneof> _LocationSearchResponse_ResponseOneofByTag = {
    1 : LocationSearchResponse_ResponseOneof.details,
    2 : LocationSearchResponse_ResponseOneof.autocompleteResponse,
    0 : LocationSearchResponse_ResponseOneof.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LocationSearchResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'property.service'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<LocationDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'details', subBuilder: LocationDetails.create)
    ..aOM<LocationAutocompleteResponse>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'autocompleteResponse', protoName: 'autocompleteResponse', subBuilder: LocationAutocompleteResponse.create)
    ..hasRequiredFields = false
  ;

  LocationSearchResponse._() : super();
  factory LocationSearchResponse({
    LocationDetails? details,
    LocationAutocompleteResponse? autocompleteResponse,
  }) {
    final _result = create();
    if (details != null) {
      _result.details = details;
    }
    if (autocompleteResponse != null) {
      _result.autocompleteResponse = autocompleteResponse;
    }
    return _result;
  }
  factory LocationSearchResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LocationSearchResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LocationSearchResponse clone() => LocationSearchResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LocationSearchResponse copyWith(void Function(LocationSearchResponse) updates) => super.copyWith((message) => updates(message as LocationSearchResponse)) as LocationSearchResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LocationSearchResponse create() => LocationSearchResponse._();
  LocationSearchResponse createEmptyInstance() => create();
  static $pb.PbList<LocationSearchResponse> createRepeated() => $pb.PbList<LocationSearchResponse>();
  @$core.pragma('dart2js:noInline')
  static LocationSearchResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LocationSearchResponse>(create);
  static LocationSearchResponse? _defaultInstance;

  LocationSearchResponse_ResponseOneof whichResponseOneof() => _LocationSearchResponse_ResponseOneofByTag[$_whichOneof(0)]!;
  void clearResponseOneof() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  LocationDetails get details => $_getN(0);
  @$pb.TagNumber(1)
  set details(LocationDetails v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDetails() => $_has(0);
  @$pb.TagNumber(1)
  void clearDetails() => clearField(1);
  @$pb.TagNumber(1)
  LocationDetails ensureDetails() => $_ensure(0);

  @$pb.TagNumber(2)
  LocationAutocompleteResponse get autocompleteResponse => $_getN(1);
  @$pb.TagNumber(2)
  set autocompleteResponse(LocationAutocompleteResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasAutocompleteResponse() => $_has(1);
  @$pb.TagNumber(2)
  void clearAutocompleteResponse() => clearField(2);
  @$pb.TagNumber(2)
  LocationAutocompleteResponse ensureAutocompleteResponse() => $_ensure(1);
}

class LocationDetails extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LocationDetails', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'property.service'), createEmptyInstance: create)
    ..a<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'latitude', $pb.PbFieldType.OF)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'longitude', $pb.PbFieldType.OF)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'placeID', protoName: 'placeID')
    ..hasRequiredFields = false
  ;

  LocationDetails._() : super();
  factory LocationDetails({
    $core.double? latitude,
    $core.double? longitude,
    $core.String? placeID,
  }) {
    final _result = create();
    if (latitude != null) {
      _result.latitude = latitude;
    }
    if (longitude != null) {
      _result.longitude = longitude;
    }
    if (placeID != null) {
      _result.placeID = placeID;
    }
    return _result;
  }
  factory LocationDetails.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LocationDetails.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LocationDetails clone() => LocationDetails()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LocationDetails copyWith(void Function(LocationDetails) updates) => super.copyWith((message) => updates(message as LocationDetails)) as LocationDetails; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LocationDetails create() => LocationDetails._();
  LocationDetails createEmptyInstance() => create();
  static $pb.PbList<LocationDetails> createRepeated() => $pb.PbList<LocationDetails>();
  @$core.pragma('dart2js:noInline')
  static LocationDetails getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LocationDetails>(create);
  static LocationDetails? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get latitude => $_getN(0);
  @$pb.TagNumber(1)
  set latitude($core.double v) { $_setFloat(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLatitude() => $_has(0);
  @$pb.TagNumber(1)
  void clearLatitude() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get longitude => $_getN(1);
  @$pb.TagNumber(2)
  set longitude($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLongitude() => $_has(1);
  @$pb.TagNumber(2)
  void clearLongitude() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get placeID => $_getSZ(2);
  @$pb.TagNumber(3)
  set placeID($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPlaceID() => $_has(2);
  @$pb.TagNumber(3)
  void clearPlaceID() => clearField(3);
}

class LocationAutocompleteResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LocationAutocompleteResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'property.service'), createEmptyInstance: create)
    ..pc<LocationAutocomplete>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'responses', $pb.PbFieldType.PM, subBuilder: LocationAutocomplete.create)
    ..hasRequiredFields = false
  ;

  LocationAutocompleteResponse._() : super();
  factory LocationAutocompleteResponse({
    $core.Iterable<LocationAutocomplete>? responses,
  }) {
    final _result = create();
    if (responses != null) {
      _result.responses.addAll(responses);
    }
    return _result;
  }
  factory LocationAutocompleteResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LocationAutocompleteResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LocationAutocompleteResponse clone() => LocationAutocompleteResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LocationAutocompleteResponse copyWith(void Function(LocationAutocompleteResponse) updates) => super.copyWith((message) => updates(message as LocationAutocompleteResponse)) as LocationAutocompleteResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LocationAutocompleteResponse create() => LocationAutocompleteResponse._();
  LocationAutocompleteResponse createEmptyInstance() => create();
  static $pb.PbList<LocationAutocompleteResponse> createRepeated() => $pb.PbList<LocationAutocompleteResponse>();
  @$core.pragma('dart2js:noInline')
  static LocationAutocompleteResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LocationAutocompleteResponse>(create);
  static LocationAutocompleteResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<LocationAutocomplete> get responses => $_getList(0);
}

class LocationAutocomplete extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LocationAutocomplete', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'property.service'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'placeID', protoName: 'placeID')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'secondaryText', protoName: 'secondaryText')
    ..hasRequiredFields = false
  ;

  LocationAutocomplete._() : super();
  factory LocationAutocomplete({
    $core.String? placeID,
    $core.String? title,
    $core.String? secondaryText,
  }) {
    final _result = create();
    if (placeID != null) {
      _result.placeID = placeID;
    }
    if (title != null) {
      _result.title = title;
    }
    if (secondaryText != null) {
      _result.secondaryText = secondaryText;
    }
    return _result;
  }
  factory LocationAutocomplete.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LocationAutocomplete.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LocationAutocomplete clone() => LocationAutocomplete()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LocationAutocomplete copyWith(void Function(LocationAutocomplete) updates) => super.copyWith((message) => updates(message as LocationAutocomplete)) as LocationAutocomplete; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LocationAutocomplete create() => LocationAutocomplete._();
  LocationAutocomplete createEmptyInstance() => create();
  static $pb.PbList<LocationAutocomplete> createRepeated() => $pb.PbList<LocationAutocomplete>();
  @$core.pragma('dart2js:noInline')
  static LocationAutocomplete getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LocationAutocomplete>(create);
  static LocationAutocomplete? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get placeID => $_getSZ(0);
  @$pb.TagNumber(1)
  set placeID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPlaceID() => $_has(0);
  @$pb.TagNumber(1)
  void clearPlaceID() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get secondaryText => $_getSZ(2);
  @$pb.TagNumber(3)
  set secondaryText($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSecondaryText() => $_has(2);
  @$pb.TagNumber(3)
  void clearSecondaryText() => clearField(3);
}

