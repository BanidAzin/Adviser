import 'package:advicer/core/failures/failures.dart';
import 'package:advicer/features/advice/advice.dart';
import 'package:dartz/dartz.dart';

abstract class AdviceRepo {
  Future<Either<Failures, AdviceEntity>> getAdviceFromDataSource();
}
