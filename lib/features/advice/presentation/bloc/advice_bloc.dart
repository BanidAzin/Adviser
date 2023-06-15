import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'advice_event.dart';
part 'advice_state.dart';

class AdviceBloc extends Bloc<AdviceEvent, AdviceState> {
  AdviceBloc() : super(AdviceInitial()) {
    on<RequestAdviceEvent>(_onRequestAdviceEvent);
  }

  Future<void> _onRequestAdviceEvent(
      RequestAdviceEvent event, Emitter<AdviceState> emit) async {
    emit(AdviceLoading());
    await Future.delayed(
      const Duration(seconds: 5),
    );
    emit(const AdviceLoaded(advice: 'Some test advices'));
    // TODO: emit(const AdviceError(message: 'Something went wrong'));
  }
}
