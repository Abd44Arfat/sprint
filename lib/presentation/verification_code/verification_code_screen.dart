import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../core/resources/strings_manager.dart';
import 'widgets/widgets.dart';

@RoutePage()
class VerificationCodeScreen extends StatelessWidget {
  const VerificationCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.verificationCode),
        centerTitle: true,
      ),
      backgroundColor: Colors.black,
      body: const VerificationCodeBody(),
    );
  }
}
