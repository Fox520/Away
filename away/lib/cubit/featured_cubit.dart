import 'package:away/data/repositories/property_repository.dart';
import 'package:away/di/locator.dart';
import 'package:away/generated/property_service.pbgrpc.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'featured_state.dart';

class FeaturedCubit extends Cubit<FeaturedState> {
  FeaturedCubit() : super(FeaturedInitial());

  void getFeaturedAreas(String countryCode) async {
    var areas =
        await getIt<PropertyRepository>().retrieveFeaturedAreas(countryCode);
    emit(FeaturedResponse(areas));
  }
}
