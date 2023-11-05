part of 'widgets.dart';

class CreateNewPasswordButton extends StatelessWidget {
  const CreateNewPasswordButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LoadingButton(
      title: AppStrings.resetPassword.tr(context),
      onTap: () {},
      btnKey: GlobalKey<CustomButtonState>(),
    );
  }
}
