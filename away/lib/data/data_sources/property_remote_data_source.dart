import 'package:away/data/repositories/user_repository.dart';
import 'package:away/di/locator.dart';
import 'package:away/generated/property_service.pbgrpc.dart';
import 'package:grpc/grpc.dart';

class PropertyRemoteDataSource {
  final PropertyServiceClient client;
  String? countryCode;
  List<LocationAutocomplete> autocompleteResults = [];

  PropertyRemoteDataSource(this.client);

  void performQuery(Stream<LocationSearchRequest> locationSearchRequestStream,
      Function onPlaceDetails) async {
    // retrieve auth token
    String token = await getIt<UserRepository>().firebaseUser!.getIdToken();
    // set country code
    if (countryCode == null) {
      // network request
      countryCode = "na";
    }
    ResponseStream<LocationSearchResponse> responses = client.locationSearch(
        locationSearchRequestStream,
        options: CallOptions(metadata: {"token": token}));
    await for (var searchResponse in responses) {
      if (searchResponse.hasDetails()) {
        onPlaceDetails(searchResponse.details);
        return;
      }
      autocompleteResults.clear();
      autocompleteResults = searchResponse.autocompleteResponse.responses;
    }
  }

  Future<List<FeaturedArea>> retrieveFeaturedAreas(String code) async {
    // retrieve auth token
    String token = await getIt<UserRepository>().firebaseUser!.getIdToken();

    var response = await client.getFeaturedAreas(
        FeaturedAreasRequest(country: code),
        options: CallOptions(metadata: {"token": token}));
    return response.featuredAreas;
  }

  void findPromotedProperties(
      Stream<PromotedRequest> requestStream, Function onResult) async {
    // retrieve auth token
    String token = await getIt<UserRepository>().firebaseUser!.getIdToken();
    var responseStream = client.getPromotedProperties(requestStream,
        options: CallOptions(metadata: {"token": token}));

    await for (var response in responseStream) {
      onResult(response.properties);
    }
  }
}
