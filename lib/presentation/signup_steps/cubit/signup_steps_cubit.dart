import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'signup_steps_state.dart';

@injectable
class SignupStepsCubit extends Cubit<SignupStepsState> {
  SignupStepsCubit() : super(SignupStepsInitial());

  static SignupStepsCubit get(BuildContext context) => BlocProvider.of(context);

  int stepIndex = 0;
  void changeStep() {
    stepIndex = 1;
    emit(ChangeStepIndex());
  }
}
