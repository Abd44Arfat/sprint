import 'package:actvex/core/common/components/widgets/my_text.dart';
import 'package:actvex/core/resources/colors_manager.dart';
import 'package:actvex/presentation/cart/widgets/product_item.dart';
import 'package:actvex/presentation/signup_steps/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckProductsBody extends StatefulWidget {
  const CheckProductsBody({Key? key}) : super(key: key);

  @override
  _CheckProductsBodyState createState() => _CheckProductsBodyState();
}

class _CheckProductsBodyState extends State<CheckProductsBody>
     {




  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 30.h),
        MyText(
          'Product Order',
          textStyle: TextStyleEnum.poppinsBold,
          fontSize: 20.sp,
          color: AppColors.grey,
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return ProductCartItem();
            },
            itemCount: 3,
          ),
        ),
                    SignupStepsContinueButton(),

      
SizedBox(height: 30.h,)
      ],
    );
  }
}
