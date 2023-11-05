part of 'signup_steps_cubit.dart';

sealed class SignupStepsState extends Equatable {
  const SignupStepsState();

  @override
  List<Object> get props => [];
}

final class SignupStepsInitial extends SignupStepsState {}

final class ChangeStepIndex extends SignupStepsState {}
