import 'package:auto_route/auto_route.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/common/components/widgets/my_text.dart';
import '../../../../../core/resources/colors_manager.dart';
import '../../../../../core/resources/routes/app_router.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){


        context.router.push(const ProductDescriptionRoute());

      },
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Container(
              width: 343.w,
              height: 292.h,
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: Color(0xFF242424),
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color(0xFF4E4E4E)),
                  borderRadius: BorderRadius.circular(32),
                ),
              ),
              child: Center(
                child: Image.asset(
                  'assets/images/Images.png',
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 20.h,
            child: Container(
              width: 307,
              height: 72,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 307.w,
                    height: 72.h,
                    decoration: ShapeDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0.00, -1.00),
                        end: Alignment(0, 1),
                        colors: [
                          Colors.white.withOpacity(0.4000000059604645),
                          Colors.white.withOpacity(0.10000000149011612)
                        ],
                      ),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Color(0xFF979797)),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x33000000),
                          blurRadius: 24,
                          offset: Offset(0, 4),
                          spreadRadius: -1,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment:CrossAxisAlignment.start,
                            children: [

                              MyText(
                                'Nintendo Pro',
                                textStyle: TextStyleEnum.poppinsMedium,
                                fontSize: 20.sp,
                                color: AppColors.white,
                              ),
                              Row(
                                children: [
                                  MyText(
                                    '1200 Sales',
                                    textStyle: TextStyleEnum.poppinsRegualr,
                                    fontSize: 14.sp,
                                    color: AppColors.white,
                                  ),
                                  MyText(
                                    ' . ''4.5 Rating',
                                    textStyle: TextStyleEnum.poppinsRegualr,
                                    fontSize: 14.sp,
                                    color: AppColors.white,
                                  ),
                                ],
                              ),


                            ],


                          ),

                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: VerticalDivider(thickness: 1,color: AppColors.white,),
                          ),
                          SizedBox(width: 11.w,),
                          MyText(
                            r'$310',
                            textStyle: TextStyleEnum.poppinsBold,
                            fontSize: 24.sp,
                            color: AppColors.white,
                          ),
                        ],
                      ),

                    ),
                  ),
                ],
              ),
            ),
          ),

          Positioned(

              right: 20.w,
             top: 20.h,
              child: Container(
            width: 36.w,
            height: 36.h,
            decoration: ShapeDecoration(
              color: Color(0x3FF1F1F1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(200000),
              ),
            ),

               child: Icon(FeatherIcons.heart,color: AppColors.white,),
          ),


          )
        ],
      ),
    );
  }
}