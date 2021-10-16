import 'package:away/data/data_sources/property_remote_data_source.dart';
import 'package:away/generated/property_service.pb.dart';
import 'package:dartz/dartz.dart';

class PropertyRepository {
  final PropertyRemoteDataSource remoteDataSource;
  List<LocationAutocomplete> autocompleteResults = [];
  PropertyRepository(this.remoteDataSource);

  Future<Either<List<LocationAutocomplete>, LocationDetails>> performQuery(
      String query) async {
    return remoteDataSource.performQuery(query);
  }
}
