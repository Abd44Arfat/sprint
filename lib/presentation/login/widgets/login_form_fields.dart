// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'widgets.dart';

class LoginFormFields extends StatelessWidget {
  const LoginFormFields({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        final cubit = LoginCubit.get(context);
        final emailError = cubit.emailError;
        final passwordError = cubit.passwordError;

        return Column(
          children: [
            DefaultTextFormField(
              hintTxt: 'Name',
              inputType: TextInputType.emailAddress,
              initialValue: '',
              textInputAction: TextInputAction.next,
              onChangedFunction: cubit.onEmailChanged,
              errorTxt: emailError,
              filledColor: AppColors.grey2, // Set the filled color to blue
hintColor: AppColors.grey,
            ),
            SizedBox(height: 24.h),
            DefaultTextFormField(
              hintTxt: 'Name',
              inputType: TextInputType.emailAddress,
              initialValue: '',
              textInputAction: TextInputAction.next,
              onChangedFunction: cubit.onEmailChanged,
              errorTxt: emailError,
              filledColor: AppColors.grey2, // Set the filled color to blue
              hintColor: AppColors.grey,
            ),
          ],
        );
      },
    );
  }
}
