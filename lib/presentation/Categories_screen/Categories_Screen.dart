import 'package:actvex/core/common/components/widgets/my_text.dart';
import 'package:actvex/core/resources/colors_manager.dart';
import 'package:actvex/presentation/Categories_screen/widgets/categories_Screen_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
      return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(

        title:                 MyText(
          'Categories',
          textStyle: TextStyleEnum.poppinsBold,
          fontSize: 24.sp,
          color: AppColors.white,
        ),


      ),
      body: CategoriesScreenBody(),

    
    );
  }
}