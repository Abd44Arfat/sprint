import 'package:actvex/core/common/components/utils/custom_button_animation.dart';
import 'package:actvex/core/common/components/widgets/loading_button.dart';
import 'package:actvex/core/common/components/widgets/my_text.dart';
import 'package:actvex/core/resources/colors_manager.dart';
import 'package:actvex/core/resources/routes/app_router.dart';
import 'package:actvex/core/resources/strings_manager.dart';
import 'package:actvex/presentation/cart/widgets/product_item.dart';
import 'package:actvex/presentation/check_out/pages/check_products/widgets/Info_checkout.dart';
import 'package:actvex/presentation/login/cubit/login_cubit.dart';
import 'package:actvex/presentation/signup_steps/cubit/signup_steps_cubit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckProductsBody extends StatefulWidget {
  const CheckProductsBody({Key? key}) : super(key: key);

  @override
  _CheckProductsBodyState createState() => _CheckProductsBodyState();
}

class _CheckProductsBodyState extends State<CheckProductsBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _showOrderConfirmation(BuildContext context) {
    _animationController.reset();
    _animationController.forward();

    Future.delayed(const Duration(milliseconds: 500), () {
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
                  BlocBuilder<SignupStepsCubit, SignupStepsState>(
                      builder: (context, state) {
                    final cubit = SignupStepsCubit.get(context);
                  return  LoadingButton(
                      title: AppStrings.continu,
                      onTap: SignupStepsCubit.get(context).changeStep,
                    );
                  })
                ],
              ),
            ),
          );
        },
      );
    });
  }

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
            itemCount: 10,
          ),
        ),
        LoadingButton(
          title: 'Proceed Order',
          onTap: () {
            _showOrderConfirmation(context); // Show bottom sheet on button tap
          },
        ),
        SizedBox(height: 30.h),
      ],
    );
  }
}
