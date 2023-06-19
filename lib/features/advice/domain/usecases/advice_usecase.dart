import 'package:advicer/core/failures/failures.dart';
import 'package:advicer/features/advice/advice.dart';
import 'package:dartz/dartz.dart';

class AdviceUseCase {
  Future<Either<Failures, AdviceEntity>> getAdvice() async {
    await Future.delayed(const Duration(seconds: 3));

    return right(const AdviceEntity(id: 1, advice: 'Advice to test'));
    // return left(CacheFailure());
  }
}
