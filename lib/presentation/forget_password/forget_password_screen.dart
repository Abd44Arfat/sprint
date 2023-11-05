import 'package:actvex/core/resources/strings_manager.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

@RoutePage()
class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(AppStrings.forgetPassword),
        centerTitle: true,
      ),
      body: const ForgetPasswordBody(),
    );
  }
}
