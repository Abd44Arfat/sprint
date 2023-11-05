import 'package:actvex/core/resources/colors_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/common/components/widgets/my_text.dart';
import 'info_analysis.dart';

class AnalysisScreenBody extends StatelessWidget {
  const AnalysisScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
        children: [

Padding(
  padding: const EdgeInsets.only(left: 20),
  child:   Image.asset('assets/images/group.png'),
),

          Divider(thickness: 1,color: AppColors.hintColor,),
          MyText(
            'This Week Transaction',
            textStyle: TextStyleEnum. poppinsLight,
            fontSize: 20.sp,
            color: AppColors.hintColor,
          ),
          MyText(
            r'$16,725.42',
            textStyle: TextStyleEnum. poppinsSemiBold,
            fontSize: 30.sp,
            color: AppColors.white,
          ),
          AnalysisInfoRow()



        ],
      ),
    );
  }
}
