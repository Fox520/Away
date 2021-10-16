import 'package:away/data/repositories/user_repository.dart';
import 'package:away/di/locator.dart';
import 'package:away/generated/property_service.pbgrpc.dart';
import 'package:dartz/dartz.dart';
import 'package:grpc/grpc.dart';

class PropertyRemoteDataSource {
  final PropertyServiceClient client;
  String? countryCode;

  PropertyRemoteDataSource(this.client);

  Future<Either<List<LocationAutocomplete>, LocationDetails>> performQuery(
      String query) async {
    // retrieve auth token
    String token = await getIt<UserRepository>().firebaseUser!.getIdToken();
    // set country code
    if (countryCode == null) {
      // network request
      countryCode = "na";
    }
    LocationSearchRequest request = LocationSearchRequest(
      query: LocationAutocompleteQuery(text: query, countryCode: countryCode),
    );
    final response = await client.locationSearch(request,
        options: CallOptions(metadata: {"token": token}));
    if (response.hasDetails()) {
      return Right(response.details);
    }
    return Left(response.autocompleteResponse.responses);
  }
}
