part of 'widgets.dart';

class ForgetPasswordButton extends StatelessWidget {
  const ForgetPasswordButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LoadingButton(
      onTap: () {
        context.router.push(const CreateNewPasswordRoute());
      },
      title: AppStrings.sendEmail.tr(context),
      btnKey: GlobalKey<CustomButtonState>(),
    );
  }
}
