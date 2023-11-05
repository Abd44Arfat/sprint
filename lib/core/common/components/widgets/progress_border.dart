import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../resources/colors_manager.dart';

class ProgressBorder extends StatelessWidget {
  final double? height;
  final double? width;
  final double? borderRadius;
  final double? strokeWidth;
  final StepEnum stepEnum;
  const ProgressBorder({
    Key? key,
    this.height,
    this.width,
    this.borderRadius,
    this.stepEnum = StepEnum.step1,
    this.strokeWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = this.height ?? 55.h;
    final width = this.width ?? 55.h;
    final borderRadius = this.borderRadius ?? 8.r;
    final strokeWidth = this.strokeWidth ?? 2.r;
    return SizedBox(
      height: height,
      width: width,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius),
              border: Border.all(
                color: AppColors.onboardingBorder,
                width: strokeWidth,
              ), // Set the grey border
            ),
          ),
          CustomPaint(
            size: Size(height, width),
            foregroundPainter: CurvedGreenBorderPainter(
              cornerRadius: borderRadius,
              strokeWidth: strokeWidth,
              stepEnum: stepEnum,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.r),
            child: Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                color: AppColors.background,
                borderRadius: BorderRadius.circular(borderRadius),
              ),
              child: Center(
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 20.r,
                  color: AppColors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

enum StepEnum { step1, step2, step3 }

class CurvedGreenBorderPainter extends CustomPainter {
  final double cornerRadius;
  final double strokeWidth;
  final StepEnum stepEnum;

  CurvedGreenBorderPainter({
    required this.cornerRadius,
    required this.strokeWidth,
    required this.stepEnum,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = AppColors.primaryColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;

    final double offset = strokeWidth / 2;

    final double centerX = size.width / 2;
    // final double centerY = size.height / 2;

    final double topCenterX = centerX;
    final double topY = offset;

    final double rightX = size.width;
    final double topRightY = offset;

    final double bottomY = size.height - offset;

    final Path path = Path()
      ..moveTo(topCenterX, topY)
      // Step 1
      ..lineTo(rightX - cornerRadius, offset)
      ..arcToPoint(
        Offset(rightX - offset, topRightY + cornerRadius),
        radius: Radius.circular(cornerRadius),
        largeArc: false,
      )
      ..lineTo(rightX - offset, bottomY - cornerRadius);
    if (stepEnum == StepEnum.step2 || stepEnum == StepEnum.step3) {
      path
        // Step 2
        ..arcToPoint(
          Offset(rightX - cornerRadius, bottomY),
          radius: Radius.circular(cornerRadius),
          largeArc: false,
        )
        ..lineTo(cornerRadius, bottomY)
        ..arcToPoint(
          Offset(offset, bottomY - cornerRadius),
          radius: Radius.circular(cornerRadius),
          largeArc: false,
        );
    }
    // Step 3
    if (stepEnum == StepEnum.step3) {
      path
        ..lineTo(offset, topY + cornerRadius)
        ..arcToPoint(
          Offset(offset + cornerRadius, topY),
          radius: Radius.circular(cornerRadius),
          largeArc: false,
        )
        ..close();
    }

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
