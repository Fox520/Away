import 'package:away/data/data_sources/user_remote_data_source.dart';
import 'package:away/data/repositories/user_repository.dart';
import 'package:away/generated/user_service.pb.dart';
import 'package:away/generated/user_service.pbgrpc.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:get_it/get_it.dart';
import 'package:grpc/grpc.dart';

final getIt = GetIt.instance;

void setupLocator() {
  getIt.registerLazySingleton<UserRepository>(() {
    final channel = ClientChannel(
      "192.168.0.183", // server address
      port: 9000,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );
    var userServiceClient = UserServiceClient(channel);
    var userRemoteDataSource = UserRemoteDataSource(userServiceClient);
    return UserRepository(userRemoteDataSource);
  });

  getIt.registerSingleton<AwayUser>(AwayUser());

  // Analytics
  getIt.registerSingleton<FirebaseAnalyticsObserver>(
      FirebaseAnalyticsObserver(analytics: FirebaseAnalytics()));
}
