import 'package:flutter/material.dart';
import 'package:actvex/core/common/components/widgets/my_text.dart';

import '../../../resources/colors_manager.dart';

class DefaultButton extends StatelessWidget {
  final String title;
  final Function()? onTap;
  final Color? textColor;
  final Color? color;
  final Color? borderColor;
  final BorderRadius? borderRadius;
  final EdgeInsets? margin;
  final double? width;
  final double? fontSize;
  final double? height;
  final double? elevation;
  final bool? disabled;
  final TextStyleEnum fontStyle;
  final FontWeight? fontWeight;

  const DefaultButton({
    super.key,
    required this.title,
    this.onTap,
    this.color,
    this.disabled,
    this.textColor,
    this.borderRadius,
    this.margin,
    this.borderColor,
    required this.fontStyle,
    this.fontSize,
    this.width,
    this.height,
    this.fontWeight,
    this.elevation,
  });

  @override
  Widget build(BuildContext context) {
    Color border = color ?? AppColors.primaryColor;
    return IgnorePointer(
      ignoring: disabled ?? false,
      child: Container(
        width: width ?? MediaQuery.of(context).size.width,
        height: height ?? 45,
        margin:
            margin ?? const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
            backgroundColor: color ?? AppColors.primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(10),
              side: BorderSide(color: borderColor ?? border, width: 1),
            ),
            elevation: elevation ?? 0,
          ),
          child: MyText(
            title,
            fontSize: fontSize ?? 11,
            color: textColor ?? Colors.white,
            textStyle: fontStyle,
            fontWeight: fontWeight,
          ),
        ),
      ),
    );
  }
}
