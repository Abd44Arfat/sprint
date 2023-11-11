part of 'widgets.dart';

class SignupStepsBody extends StatelessWidget {
  const SignupStepsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignupStepsCubit, SignupStepsState>(
      builder: (context, state) {
        final cubit = SignupStepsCubit.get(context);
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(height: 20.h),
              const StepperWidget(),
            if (cubit.stepIndex == 0) 
          Expanded(child: CheckProductsScreen())
              else
                        Expanded(child: ChoosePaymentAndAddressBody())

            ],
          ),
        );
      },
    );
  }
}
