import 'package:actvex/core/common/components/widgets/my_text.dart';
import 'package:actvex/core/resources/colors_manager.dart';
import 'package:actvex/presentation/cart/widgets/cart_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: MyText(
          'Cart',
          textStyle: TextStyleEnum.poppinsBold,
          fontSize: 24.sp,
          color: AppColors.white,
        ),
      ),
      body: CartScreenBody(),
    );
  }
}
