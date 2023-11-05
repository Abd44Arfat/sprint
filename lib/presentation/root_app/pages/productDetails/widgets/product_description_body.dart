import 'package:actvex/presentation/root_app/pages/productDetails/widgets/product_image_irem.dart';
import 'package:actvex/presentation/root_app/pages/products_screen/widgets/product_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/common/components/widgets/my_text.dart';
import '../../../../../core/resources/colors_manager.dart';
import 'imagesmodel.dart';
class ProductDescriptionBody extends StatefulWidget {
  const ProductDescriptionBody({Key? key}) : super(key: key);

  @override
  _ProductDescriptionBodyState createState() => _ProductDescriptionBodyState();
}

class _ProductDescriptionBodyState extends State<ProductDescriptionBody> {
  int selectedImageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyText(
            'Nintendo Pro',
            textStyle: TextStyleEnum.poppinsSemiBold,
            fontSize: 20.sp,
            color: AppColors.white,
          ),
          SizedBox(height: 10.h),
          ProductImageItem(imageUrl: products[selectedImageIndex][0]), // Pass the selected image URL
          // Rest of your code...
          Container(
            height: 72.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedImageIndex = index;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7),
                    child: AnimatedContainer(
                      width: 72.w,
                      height: 72.h,
                      decoration: ShapeDecoration(
                        color: Color(0xFF242424),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                          side: BorderSide(
                            width: 2, // Border width
                            color: index == selectedImageIndex
                                ? Colors.white // White border for the selected item
                                : Colors.transparent, // No border for other items
                          ),
                        ),
                      ),
                      duration: Duration(milliseconds: 800),
                      child: Image.asset(products[index][0]),
                    ),
                  ),
                );
              },
              itemCount: products.length,
            ),
          ),


        MyText(
          'Description',
          textStyle: TextStyleEnum.poppinsSemiBold,
          fontSize: 20.sp,
          color: AppColors.white,
        ),

        MyText(
          'A sleek black joystick with neon accents and a comfortable grip for precise gaming control...',
          textStyle: TextStyleEnum.poppinsRegualr,
          fontSize:16.sp,
          color: AppColors.hintColor,
        ),
        Row(children: [


          Container(
            width: 88.w,
            height: 40.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xff262626),
            ),
            child: Center(
              child: MyText(
                'Best Seller',
                textStyle: TextStyleEnum.poppinsRegualr,
                fontSize: 14.sp,
                color:AppColors.hintColor, // Set the text color to white
              ),
            ),
          ), Container(
            width: 88.w,
            height: 40.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xff262626),
            ),
            child: Center(
              child: MyText(
                'Best Seller',
                textStyle: TextStyleEnum.poppinsRegualr,
                fontSize: 14.sp,
                color:AppColors.hintColor, // Set the text color to white
              ),
            ),
          ), Container(
            width: 88.w,
            height: 40.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xff262626),
            ),
            child: Center(
              child: MyText(
                'Best Seller',
                textStyle: TextStyleEnum.poppinsRegualr,
                fontSize: 14.sp,
                color:AppColors.hintColor, // Set the text color to white
              ),
            ),
          ),

        ],)
      ],



      ),
    );
  }
}
