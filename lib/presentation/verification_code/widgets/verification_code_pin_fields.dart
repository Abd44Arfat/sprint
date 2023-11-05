part of 'widgets.dart';

class VerificationCodePinFields extends StatelessWidget {
  const VerificationCodePinFields({super.key});

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      length: 6,
      obscureText: false,
      hintCharacter: '-',
      hintStyle: getRegularStyle(color: Colors.black, fontSize: 18.sp),
      textStyle: getRegularStyle(color: Colors.black, fontSize: 18.sp),
      cursorColor: AppColors.primaryColor,
      keyboardType: TextInputType.number,
      animationType: AnimationType.fade,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(8.r),
        fieldHeight: 56.h,
        fieldWidth: 54.w,
        inactiveBorderWidth: 0,
        selectedBorderWidth: 1,
        activeBorderWidth: 1,
        selectedColor: AppColors.formFieldBorderColor,
        activeColor: AppColors.formFieldBorderColor,
        inactiveColor: AppColors.formFieldColor,
        inactiveFillColor: AppColors.formFieldColor,
        activeFillColor: AppColors.formFieldColor,
        selectedFillColor: AppColors.formFieldColor,
      ),
      animationDuration: const Duration(milliseconds: 300),
      enableActiveFill: true,
      // errorAnimationController: errorController,
      controller: TextEditingController(),
      onCompleted: (v) {
        print("Completed");
      },
      onChanged: (value) {},
      beforeTextPaste: (text) {
        print("Allowing to paste $text");
        //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
        //but you can show anything you want here, like your pop up saying wrong paste format or etc
        return true;
      },
    );
  }
}
