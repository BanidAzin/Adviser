const serverFailureMessage = 'Server failed, pls try again';
const cacheFailureMessage = 'Cache failed, pls try again';
const generalFailureMessage = 'Something went wrong, pls try again';

abstract class Failures {}

class ServerFailure extends Failures {}

class CacheFailure extends Failures {}

class GeneralFailure extends Failures {}

String failureMessageMapper(Failures failure) {
  switch (failure.runtimeType) {
    case ServerFailure:
      return serverFailureMessage;

    case CacheFailure:
      return cacheFailureMessage;

    default:
      return generalFailureMessage;
  }
}
