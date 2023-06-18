import 'package:advicer/features/advice/advice.dart';

class AdviceUseCase {
  Future<AdviceEntity> getAdvice() async {
    await Future.delayed(const Duration(seconds: 3));
    return const AdviceEntity(id: 1, advice: 'Advice to test');
  }
}
