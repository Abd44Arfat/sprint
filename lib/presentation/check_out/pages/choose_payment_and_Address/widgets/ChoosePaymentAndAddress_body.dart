import 'package:actvex/core/common/components/widgets/loading_button.dart';
import 'package:actvex/core/common/components/widgets/my_text.dart';
import 'package:actvex/core/resources/colors_manager.dart';
import 'package:actvex/presentation/check_out/pages/check_products/widgets/Info_checkout.dart';
import 'package:actvex/presentation/check_out/pages/choose_payment_and_Address/widgets/Address_list.dart';
import 'package:actvex/presentation/check_out/pages/choose_payment_and_Address/widgets/payment%20Method.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChoosePaymentAndAddressBody extends StatelessWidget {
  const ChoosePaymentAndAddressBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          MyText(
            'Choose Address',
            textStyle: TextStyleEnum.poppinsSemiBold,
            fontSize: 24.sp,
            color: AppColors.white,
          ),
          SizedBox(height: 200.h, child: ChooseAddressList()),
          SizedBox(
            height: 50.h,
          ),
          MyText(
            'Payment Method',
            textStyle: TextStyleEnum.poppinsSemiBold,
            fontSize: 24.sp,
            color: AppColors.white,
          ),
          Expanded(child: ChoosePaymentMethod()),
          LoadingButton(
              title: 'Pay',
              onTap: () {
                _showOrderConfirmation(context);
              }),
              SizedBox(height: 30.h,)
        ],
      ),
    );
  }
}

void _showOrderConfirmation(BuildContext context) {
  showModalBottomSheet(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: 300.h, // Specify the desired height here
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: AppColors.grey2,
        ),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              InfoCheckout(
                productPrice: r'$430',
                shipment: r'$40',
                tax: r'$30',
                total: r'$550',
              ),
              Spacer(),
              LoadingButton(
                title: 'Proceed Order',
                onTap: () {
                  // Call the changeStepTo1 function to change the step index

                  // Close the modal sheet
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      );
    },
  );
}
