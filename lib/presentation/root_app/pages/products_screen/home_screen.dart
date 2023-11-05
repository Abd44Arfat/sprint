import 'package:actvex/core/resources/colors_manager.dart';
import 'package:actvex/presentation/root_app/pages/products_screen/widgets/home_screen_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: AppColors.background,
      body: HomeScreenBody(),


    );
  }
}
