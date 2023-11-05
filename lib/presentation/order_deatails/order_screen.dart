import 'package:actvex/presentation/order_deatails/widgets/order_details_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/common/components/widgets/my_text.dart';
import '../../core/resources/colors_manager.dart';

class OrderDetailsScreen extends StatelessWidget {
  const OrderDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(

        title:                 MyText(
          'Order Details',
          textStyle: TextStyleEnum.poppinsBold,
          fontSize: 24.sp,
          color: AppColors.white,
        ),


      ),
      body: orderDetails(),

    );
  }
}
