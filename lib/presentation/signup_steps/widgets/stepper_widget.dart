part of 'widgets.dart';

class StepperWidget extends StatelessWidget {
  const StepperWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: AppColors.primaryColor,
          radius: 16.r,
          child: MyText(
            '1',
            textStyle: TextStyleEnum.poppinsMedium,
            fontSize: 18.sp,
            color: Colors.white,
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 8.w),
            height: 1,
            color: AppColors.primaryColor,
          ),
        ),
        BlocBuilder<SignupStepsCubit, SignupStepsState>(
          builder: (context, state) {
            return CircleAvatar(
              backgroundColor: SignupStepsCubit.get(context).stepIndex == 1
                  ? AppColors.primaryColor
                  : AppColors.unreachedStepBgColor,
              radius: 16.r,
              child: MyText(
                '2',
                textStyle: TextStyleEnum.poppinsMedium,
                fontSize: 18.sp,
                color: Colors.white,
              ),
            );
          },
        ),
      ],
    );
  }
}
