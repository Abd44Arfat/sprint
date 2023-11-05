import 'package:actvex/presentation/create_new_password/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../core/resources/strings_manager.dart';

@RoutePage()
class CreateNewPasswordScreen extends StatelessWidget {
  const CreateNewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(AppStrings.createNewPassword),
        centerTitle: true,
      ),
      body: const CreateNewPassowrdBody(),
    );
  }
}
