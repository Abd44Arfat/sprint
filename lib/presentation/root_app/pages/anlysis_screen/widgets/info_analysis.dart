import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/common/components/widgets/my_text.dart';
import '../../../../../core/resources/colors_manager.dart';

class AnalysisInfoRow extends StatelessWidget {
  const AnalysisInfoRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(


      children: [ Container(
        width: 16.90,
        height: 16.90,
        decoration: ShapeDecoration(
          color: Color(0xFF57BF9C),
          shape: OvalBorder(),
        ),
      ),

        MyText(
          'Food',
          textStyle: TextStyleEnum. poppinsRegualr,
          fontSize: 20.sp,
          color: AppColors.hintColor,
        ),
        Spacer(),
        MyText(
          'Food',
          textStyle: TextStyleEnum. poppinsSemiBold,
          fontSize: 20.sp,
          color: AppColors.white,
        ),


      ],



    );


  }}