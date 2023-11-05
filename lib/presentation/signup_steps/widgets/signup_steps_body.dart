part of 'widgets.dart';

class SignupStepsBody extends StatelessWidget {
  const SignupStepsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignupStepsCubit, SignupStepsState>(
      builder: (context, state) {
        final cubit = SignupStepsCubit.get(context);
        return SafeArea(
          child: SingleChildScrollView(
            child: SizedBox(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Column(
                      children: [
                        const SignupStepsTitle(),
                        SizedBox(height: 10.h),
                        const SignupStepsSubTitle(),
                      ],
                    ),
                  ),
                  SizedBox(height: 30.h),
                  Flexible(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(8.r),
                          topLeft: Radius.circular(8.r),
                        ),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 40.h),
                          const StepperWidget(),
                          SizedBox(height: 30.h),
                          if (cubit.stepIndex == 0)
                            const FirstSepWidget()
                          else
                            const SecondStepWidget(),
                          SizedBox(height: 24.h),
                          const SignupStepsContinueButton(),
                          SizedBox(
                            height: MediaQuery.sizeOf(context).height / 5,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
