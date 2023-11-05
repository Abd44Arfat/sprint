import 'package:auto_route/auto_route.dart';
import 'cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/resources/colors_manager.dart';
import '../../../di.dart';
import 'widgets/widgets.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<LoginCubit>()..initializeEmailAndPassword('email', 'password'),
      child: const Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: AppColors.authBgColor,
        body: LoginBody(),
      ),
    );
  }
}
