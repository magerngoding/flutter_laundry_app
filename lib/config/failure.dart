// ignore_for_file: public_member_api_docs, sort_constructors_first
// abstract untuk turunan class
abstract class Failure implements Exception {
  final String? message; // menampung pesan error

  Failure(this.message);
}

class FetchFailure extends Failure {
  FetchFailure(super.message);
}

class BadRequestFailure extends Failure {
  BadRequestFailure(super.message);
}

class UnautorisedFailure extends Failure {
  UnautorisedFailure(super.message);
}

class ForbiddenFailure extends Failure {
  ForbiddenFailure(super.message);
}

class InvalidInputFailure extends Failure {
  InvalidInputFailure(super.message);
}

class NotFoundFailure extends Failure {
  NotFoundFailure(super.message);
}

class ServerFailure extends Failure {
  ServerFailure(super.message);
}
