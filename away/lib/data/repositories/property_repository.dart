import 'package:away/data/data_sources/property_remote_data_source.dart';
import 'package:away/generated/property_service.pb.dart';

class PropertyRepository {
  final PropertyRemoteDataSource remoteDataSource;
  List<LocationAutocomplete> get autocompleteResults =>
      remoteDataSource.autocompleteResults;

  PropertyRepository(this.remoteDataSource);

  void performQuery(Stream<LocationSearchRequest> locationSearchRequestStream,
      Function onPlaceDetails) {
    remoteDataSource.performQuery(locationSearchRequestStream, onPlaceDetails);
  }

  Future<List<FeaturedArea>> retrieveFeaturedAreas(String countryCode) {
    return remoteDataSource.retrieveFeaturedAreas(countryCode);
  }

  void findPromotedProperties(Stream<PromotedRequest> requestStream, Function onResult) {
    remoteDataSource.findPromotedProperties(requestStream, onResult);
  }
}
