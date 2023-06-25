import 'package:advicer/core/failures/failures.dart';
import 'package:advicer/features/advice/advice.dart';
import 'package:dartz/dartz.dart';

class AdviceUseCase {
  final AdviceRepo adviceRepoImp;

  AdviceUseCase({required this.adviceRepoImp});

  Future<Either<Failures, AdviceEntity>> getAdvice() async {
    return await adviceRepoImp.getAdviceFromDataSource();
  }
}
