part of 'widgets.dart';

class SignupStepsContinueButton extends StatelessWidget {
  const SignupStepsContinueButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LoadingButton(
      title: AppStrings.continu,
      onTap: SignupStepsCubit.get(context).changeStep,
      btnKey: GlobalKey<CustomButtonState>(),
    );
  }
}
