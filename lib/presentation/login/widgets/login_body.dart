// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'widgets.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state.error != null) {
          SimpleToast.show(
            msg: state.error!,
            state: ToastStates.error,
          );
        }
        if (state.isSuccess) {}
      },
      child: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.sizeOf(context).height -
                MediaQuery.paddingOf(context).top,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 40.h),
                  const LoginTitle(),
                  SizedBox(height: 30.h),
                  Column(
                    children: [
                      SizedBox(height: 25.h),
                      const LoginFormFields(),
                      SizedBox(height: 16.h),
                      const LoginForgotPasswordAndStaySignIn(),
                      SizedBox(height: 29.h),
                      const LoginButton(),
                      SizedBox(height: 16.h),
                      const DontHaveAccountSignup()
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
