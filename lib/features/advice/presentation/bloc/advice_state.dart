part of 'advice_bloc.dart';

abstract class AdviceState extends Equatable {
  const AdviceState();

  @override
  List<Object> get props => [];
}

class AdviceInitial extends AdviceState {}

class AdviceLoading extends AdviceState {}

class AdviceLoaded extends AdviceState {
  final String advice;

  const AdviceLoaded({required this.advice});

  @override
  List<Object> get props => [advice];
}

class AdviceError extends AdviceState {
  final String message;

  const AdviceError({required this.message});

  @override
  List<Object> get props => [message];
}
