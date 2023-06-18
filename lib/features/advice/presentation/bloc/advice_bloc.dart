import 'package:advicer/features/advice/advice.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'advice_event.dart';
part 'advice_state.dart';

class AdviceBloc extends Bloc<AdviceEvent, AdviceState> {
  final AdviceUseCase adviceUseCase = AdviceUseCase();

  AdviceBloc() : super(AdviceInitial()) {
    on<RequestAdviceEvent>(_onRequestAdviceEvent);
  }

  Future<void> _onRequestAdviceEvent(
      RequestAdviceEvent event, Emitter<AdviceState> emit) async {
    emit(AdviceLoading());
    AdviceEntity advice = await adviceUseCase.getAdvice();
    emit(AdviceLoaded(advice: advice.advice));
    // TODO: emit(const AdviceError(message: 'Something went wrong'));
  }
}
