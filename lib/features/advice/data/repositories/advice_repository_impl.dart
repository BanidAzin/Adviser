import 'package:advicer/core/core.dart';
import 'package:advicer/features/advice/advice.dart';
import 'package:dartz/dartz.dart';

class AdviceRepoImpl implements AdviceRepo {
  final AdviceRemoteData adviceRemoteDataImp;

  AdviceRepoImpl({required this.adviceRemoteDataImp});

  @override
  Future<Either<Failures, AdviceEntity>> getAdviceFromDataSource() async {
    try {
      final result = await adviceRemoteDataImp.getAdviceFromRemote();
      return right(result);
    } on ServerException {
      return left(ServerFailure());
    } catch (_) {
      return left(GeneralFailure());
    }
  }
}
