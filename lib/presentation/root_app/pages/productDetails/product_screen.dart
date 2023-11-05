import 'package:actvex/presentation/root_app/pages/productDetails/widgets/product_description_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/common/components/widgets/my_text.dart';
import '../../../../core/resources/colors_manager.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(

        title:                 MyText(
          'Details',
          textStyle: TextStyleEnum.poppinsBold,
          fontSize: 24.sp,
          color: AppColors.white,
        ),


      ),
      body: ProductDescriptionBody(),
    );
  }
}
