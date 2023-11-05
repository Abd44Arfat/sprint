part of 'widgets.dart';

class VerificationCodeButton extends StatelessWidget {
  const VerificationCodeButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LoadingButton(
      onTap: () {
        // context.router.push(const CreateNewPasswordRoute());
      },
      title: AppStrings.verifyEmail.tr(context),
      btnKey: GlobalKey<CustomButtonState>(),
    );
  }
}
