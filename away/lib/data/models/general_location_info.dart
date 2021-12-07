class GeneralLocationInfo {
  GeneralLocationInfo({
    required this.status,
    required this.country,
    required this.countryCode,
    required this.region,
    required this.regionName,
    required this.city,
    required this.lat,
    required this.lon,
    required this.query,
  });
  late final String status;
  late final String country;
  late final String countryCode;
  late final String region;
  late final String regionName;
  late final String city;
  late final double lat;
  late final double lon;
  late final String query;
  
  GeneralLocationInfo.fromJson(Map<String, dynamic> json){
    status = json['status'];
    country = json['country'];
    countryCode = json['countryCode'];
    region = json['region'];
    regionName = json['regionName'];
    city = json['city'];
    lat = json['lat'];
    lon = json['lon'];
    query = json['query'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['status'] = status;
    _data['country'] = country;
    _data['countryCode'] = countryCode;
    _data['region'] = region;
    _data['regionName'] = regionName;
    _data['city'] = city;
    _data['lat'] = lat;
    _data['lon'] = lon;
    _data['query'] = query;
    return _data;
  }
}