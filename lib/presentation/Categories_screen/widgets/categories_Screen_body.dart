import 'package:actvex/core/common/components/widgets/my_text.dart';
import 'package:actvex/core/resources/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesScreenBody extends StatelessWidget {
  const CategoriesScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          SizedBox(height: 20.h),
          Expanded(
            child: ListView.builder(
              clipBehavior: Clip.none,
              itemBuilder: (context, index) {
                return CategoryItem();
              },
              itemCount: 5,
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: Container(
            width: 324,
            height: 103,
            decoration: ShapeDecoration(
              gradient: LinearGradient(
                begin: Alignment(-0.25, 0.97),
                end: Alignment(0.25, -0.97),
                colors: [Color(0xFF242424), Color(0x00242424)],
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(21.46),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.start,
            
                children: [
            
            MyText(
                  'Electronics',
                  textStyle: TextStyleEnum.poppinsRegualr,
                  fontSize: 32.sp,
                  color: AppColors.white,
                ),
                MyText(
                  'GET 50% OFF',
                  textStyle: TextStyleEnum.poppinsRegualr,
                  fontSize: 20.sp,
                  color: AppColors.primaryColor,
                ),
            
              ]),
            ),
          ),
        ),
    
        Positioned(
    
          right: 20,
          top: -10,
          child: Container(
            height: 110,
            child: Image.asset('assets/images/Image.png',)))
      ],
    );
  }
}
