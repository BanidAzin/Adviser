import 'package:advicer/core/failures/failures.dart';
import 'package:advicer/features/advice/advice.dart';
import 'package:dartz/dartz.dart';

class AdviceUseCase {
  final AdviceRepoImpl adviceRepoImp = AdviceRepoImpl();

  Future<Either<Failures, AdviceEntity>> getAdvice() async {
    return await adviceRepoImp.getAdviceFromDataSource();
  }
}
