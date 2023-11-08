import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../../resources/colors_manager.dart';
import '../utils/custom_button_animation.dart';
import 'my_text.dart';

class LoadingButton extends StatelessWidget {
  final GlobalKey<CustomButtonState> ?btnKey;
  final String title;
  final Function() onTap;
  final Color? textColor;
  final Color? color;
  final Color? borderColor;
  final double? borderRadius;
  final EdgeInsets? margin;
  final double? width;
  final double? height;
  final double? fontSize;
  final TextStyleEnum? fontStyle;
  final FontWeight? fontWeight;

  const LoadingButton({
    super.key,
    required this.title,
    required this.onTap,
    this.color,
    this.textColor,
    this.borderRadius,
    this.margin,
    this.borderColor,
    this.fontStyle,
    this.fontSize,
    this.width,
    this.height,
    this.fontWeight,
     this.btnKey,
  });

  @override
  Widget build(BuildContext context) {
    Color border = color ?? AppColors.primaryColor;
    return Container(
      alignment: Alignment.center,
      margin: margin ?? const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          CustomButtonAnimation(
            key: btnKey,
            onTap: onTap,
            width: width ?? MediaQuery.of(context).size.width,
            minWidth: 45,
            height: height ?? 56.h,
            color: color ?? AppColors.primaryColor,
            borderRadius: borderRadius ?? 10,
            borderSide: BorderSide(color: borderColor ?? border, width: 1),
            loader: Container(
              padding: const EdgeInsets.all(10),
              child: const SpinKitRotatingCircle(
                color: Colors.white,
                size: 20,
              ),
            ),
            child: MyText(
              title,
              fontSize: fontSize ?? 16.sp,
              color: textColor ?? Colors.white,
              textStyle: fontStyle ?? TextStyleEnum.poppinsSemiBold,
              fontWeight: fontWeight,
            ),
          ),
        ],
      ),
    );
  }
}
