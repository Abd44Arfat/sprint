import 'package:actvex/core/common/components/widgets/my_text.dart';
import 'package:actvex/core/resources/colors_manager.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EventCard extends StatelessWidget {
  final bool isPast;
  final String text;
    final String time;

  const EventCard({super.key, required this.isPast, required this.text, required this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        MyText(
          text,
          textStyle: TextStyleEnum.poppinsBold,
          fontSize: 24.sp,
          color: AppColors.white,
        ),
        MyText(
          time,
          textStyle: TextStyleEnum.poppinsBold,
          fontSize: 14.sp,
          color: AppColors.white,
        ),
      ]),
    );
  }
}
