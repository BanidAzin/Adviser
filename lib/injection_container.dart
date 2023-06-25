import 'package:advicer/features/advice/advice.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

final GetIt sl = GetIt.instance;

Future<void> init() async {
  sl.registerFactory(
    () => AdviceBloc(adviceUseCase: sl()),
  );
  sl.registerFactory(
    () => AdviceUseCase(adviceRepoImp: sl()),
  );
  sl.registerFactory<AdviceRepo>(
    () => AdviceRepoImpl(adviceRemoteDataImp: sl()),
  );
  sl.registerFactory<AdviceRemoteData>(
    () => AdviceRemoteDataImp(client: sl()),
  );
  sl.registerFactory(() => http.Client());
}
