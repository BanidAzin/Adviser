import 'package:advicer/core/failures/failures.dart';
import 'package:advicer/features/advice/advice.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
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
    Either<Failures, AdviceEntity> advice = await adviceUseCase.getAdvice();

    return advice.fold(
      (l) => emit(AdviceError(message: failureMessageMapper(l))),
      (r) => emit(AdviceLoaded(advice: r.advice)),
    );
  }
}
