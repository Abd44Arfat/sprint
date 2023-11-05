import 'package:auto_route/annotations.dart';
import '../../../di.dart';
import 'cubit/signup_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/widgets.dart';

@RoutePage()
class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignupCubit>(),
      child: const Scaffold(
        backgroundColor: Colors.black,
        body: SignupBody(),
      ),
    );
  }
}
