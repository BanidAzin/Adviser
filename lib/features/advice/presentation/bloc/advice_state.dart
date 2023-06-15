part of 'advice_bloc.dart';

abstract class AdviceState extends Equatable {
  const AdviceState();  

  @override
  List<Object> get props => [];
}
class AdviceInitial extends AdviceState {}
