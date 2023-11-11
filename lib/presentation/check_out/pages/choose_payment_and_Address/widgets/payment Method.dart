import 'package:actvex/core/common/components/widgets/my_text.dart';
import 'package:actvex/core/resources/colors_manager.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentMethod {
  final String name;
  bool isSelected;

  PaymentMethod({required this.name, this.isSelected = false});
}

class ChoosePaymentMethod extends StatefulWidget {
  const ChoosePaymentMethod({Key? key}) : super(key: key);

  @override
  _ChoosePaymentMethodState createState() => _ChoosePaymentMethodState();
}

class _ChoosePaymentMethodState extends State<ChoosePaymentMethod> {
  List<PaymentMethod> paymentMethods = [
    PaymentMethod(name: 'Credit Card', isSelected: true),
    PaymentMethod(name: 'PayPal'),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: List.generate(paymentMethods.length, (index) {
          return InkWell(
            onTap: () {
              setState(() {
                paymentMethods.forEach((method) {
                  method.isSelected = false;
                });
                paymentMethods[index].isSelected = true;
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 55.h,
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: paymentMethods[index].isSelected
                      ? AppColors.primaryColor
                      : Color(0xFF242424),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/images/Logo.svg'),
                      SizedBox(width: 10.w,),
                      MyText(
                        paymentMethods[index].name,
                        textStyle: TextStyleEnum.poppinsSemiBold,
                        fontSize: 20.sp,
                        color: AppColors.grey,
                      ),
                      Spacer(),
                      if (paymentMethods[index].isSelected)
                        Container(
                          width: 18,
                          height: 17,
                          decoration: ShapeDecoration(
                            color: Color(0xFF048547),
                            shape: OvalBorder(),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}