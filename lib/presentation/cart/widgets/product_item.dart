import 'package:actvex/core/common/components/widgets/my_text.dart';
import 'package:actvex/core/resources/colors_manager.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
class ProductCartItem extends StatelessWidget {
  const ProductCartItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          Container(
            width: 72.w,
            height: 72.h,
            padding: const EdgeInsets.only(
              top: 14,
              left: 6,
              right: 6.20,
              bottom: 13.42,
            ),
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: Color(0xFF242424),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
            ),
            child: Image.asset('assets/images/Images.png'),
          ),
          SizedBox(width: 15.w),
          Expanded( // Added Expanded widget
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText(
                  'Nintendo Pro',
                  textStyle: TextStyleEnum.poppinsBold,
                  fontSize: 20.sp,
                  color: AppColors.grey,
                ),
                MyText(
                  'game controller',
                  textStyle: TextStyleEnum.poppinsRegualr,
                  fontSize: 18.sp,
                  color: AppColors.hintColor,
                ),
              ],
            ),
          ),
          SizedBox(width: 20.w),
          Column(
            children: [
              NumberCounter(),
              MyText(
                'Qty',
                textStyle: TextStyleEnum.poppinsRegualr,
                fontSize: 20.sp,
                color: AppColors.hintColor,
              ),
            ],
          ),
          SizedBox(width: 10.w),
          Column(
            children: [
              MyText(
                r'$310',
                textStyle: TextStyleEnum.poppinsBold,
                fontSize: 20.sp,
                color: AppColors.grey,
              ),
              MyText(
                'Price',
                textStyle: TextStyleEnum.poppinsRegualr,
                fontSize: 20.sp,
                color: AppColors.hintColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class NumberCounter extends StatefulWidget {
  @override
  _NumberCounterState createState() => _NumberCounterState();
}

class _NumberCounterState extends State<NumberCounter> {
  int number = 1; // Initial number

  void increment() {
    setState(() {
      number++;
    });
  }

  void decrement() {
    if (number > 1) {
      setState(() {
        number--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: increment,
          child: Container(
            width: 25.w,
            height: 25.h,
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: Color(0xFF242424),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
            ),
            child: Center(
              child: Icon(Icons.add, color: Colors.white),
            ),
          ),
        ),
        SizedBox(width: 10.w),

          MyText(
                    number.toString(),

          textStyle: TextStyleEnum.poppinsBold,
          fontSize: 20.sp,
          color: AppColors.grey,
        ),
        SizedBox(width: 10.w),

        GestureDetector(
          onTap: decrement,
          child: Container(
            width: 25.w,
            height: 25.h,
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: Color(0xFF242424),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
            ),
            child: Center(
              child: Icon(Icons.remove, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}


