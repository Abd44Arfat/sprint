import 'package:actvex/presentation/root_app/pages/anlysis_screen/widgets/anlysis_screen_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/common/components/widgets/my_text.dart';
import '../../../../core/resources/colors_manager.dart';

class AnalysisScreen extends StatelessWidget {
  const AnalysisScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(

        title:                 MyText(
          'Analysis',
          textStyle: TextStyleEnum.poppinsBold,
          fontSize: 24.sp,
          color: AppColors.white,
        ),


      ),
      body: AnalysisScreenBody(),

    );
  }
}
