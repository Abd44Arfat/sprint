part of 'widgets.dart';

class SignupButton extends StatelessWidget {
  const SignupButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LoadingButton(
      title: AppStrings.createMyAccount.tr(context),
      onTap: () {
        context.router.push(const SignupStepsRoute());
      },
      btnKey: SignupCubit.get(context).btnKey,
    );
  }
}
