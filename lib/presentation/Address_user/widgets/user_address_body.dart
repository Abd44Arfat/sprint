import 'package:actvex/core/common/components/widgets/my_text.dart';
import 'package:actvex/core/resources/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserAddressBody extends StatefulWidget {
  const UserAddressBody({super.key});

  @override
  _UserAddressBodyState createState() => _UserAddressBodyState();
}

class _UserAddressBodyState extends State<UserAddressBody> {
  bool isTapped = false; // to keep track of whether it's tapped
  double containerWidth = 310;
  double containerHeight = 134.66;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isTapped = !isTapped;
          if (isTapped) {
            containerWidth = 350; // Increase the width when clicked
            containerHeight = 150; // Increase the height when clicked
          } else {
            containerWidth = 310; // Reset to the original width
            containerHeight = 134.66; // Reset to the original height
          }
        });
      },
      child: Center(
        child: AnimatedContainer(
          duration: Duration(milliseconds: 800),
          width: containerWidth,
          height: containerHeight,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.67, -0.74),
              end: Alignment(-0.67, 0.74),
              colors: [Color(0xFF056034), Color(0xFF041F0F)],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(28.92),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    MyText(
                      'Home',
                      textStyle: TextStyleEnum.poppinsBold,
                      fontSize: 24.sp,
                      color: AppColors.white,
                    ),
                    Spacer(),
                    Container(
                      width: 23,
                      height: 23,
                      decoration: ShapeDecoration(
                        color: isTapped ? Colors.green : Color(0xFF242424),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(21),
                        ),
                      ),
                      child: isTapped
                          ? Icon(
                              Icons.check,
                              color: Colors.white,
                            )
                          : null,
                    ),
                  ],
                ),
                MyText(
                  '56 Orapi street Giza',
                  textStyle: TextStyleEnum.poppinsRegualr,
                  fontSize: 24.sp,
                  color: AppColors.hintColor,
                ),
                Row(
                  children: [
                    Container(
                      width: 190.83,
                      height: 39.80,
                      decoration: ShapeDecoration(
                        color: Color(0xFF054B28),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1.17, color: Colors.white),
                          borderRadius: BorderRadius.circular(17.56),
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      width: 38.31,
                      height: 35.20,
                      decoration: ShapeDecoration(
                        color: Color(0xFF054B28),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1.04, color: Colors.white),
                          borderRadius: BorderRadius.circular(15.53),
                        ),
                      ),
                      child: Center(
                        child: Icon(FeatherIcons.alignJustify, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
