import 'package:actvex/di.dart';
import 'package:actvex/presentation/signup_steps/cubit/signup_steps_cubit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/widgets.dart';

@RoutePage()
class SignupStepsScreen extends StatelessWidget {
  const SignupStepsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignupStepsCubit>(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Colors.black,
        body: const SignupStepsBody(),
      ),
    );
  }
}
