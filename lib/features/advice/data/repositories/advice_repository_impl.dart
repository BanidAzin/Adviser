import 'package:advicer/core/failures/failures.dart';
import 'package:advicer/features/advice/advice.dart';
import 'package:dartz/dartz.dart';

class AdviceRepoImpl implements AdviceRepo {
  final AdviceRemoteData adviceRemoteDataImp = AdviceRemoteDataImp();
  @override
  Future<Either<Failures, AdviceEntity>> getAdviceFromDataSource() async {
    final result = await adviceRemoteDataImp.getAdviceFromRemote();

    return right(result);
  }
}
