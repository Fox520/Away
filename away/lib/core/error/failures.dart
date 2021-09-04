import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final Object properties;

  const Failure(this.properties);

  @override
  List<Object> get props => [properties];
}

class UnknownFailure extends Failure {
  final String message;
  UnknownFailure(this.message) : super(message);
}

class UserNotFoundFailure extends Failure {
  final String message;
  UserNotFoundFailure(this.message) : super(message);
}

class GenericFailure extends Failure {
  final String message;
  GenericFailure(this.message) : super(message);
}

// Server-side problem
class ServerFailure extends Failure {
  final ServerException se;

  ServerFailure(this.se) : super(se);
}

// Description of server-side problem
class ServerException {
  final String? message;
  final int statusCode;

  ServerException(this.statusCode, this.message);
}
