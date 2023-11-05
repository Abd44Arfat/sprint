part of 'widgets.dart';
class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoadingButton(
      title: AppStrings.signIn.tr(context),
      onTap: LoginCubit.get(context).login,
      btnKey: LoginCubit.get(context).btnKey,

    );
  }
}