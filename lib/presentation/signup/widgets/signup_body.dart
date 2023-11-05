// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'widgets.dart';

class SignupBody extends StatelessWidget {
  const SignupBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupCubit, SignupState>(
      listener: (context, state) {
        if (state.error != null) {
          SimpleToast.show(msg: state.error!, state: ToastStates.error);
        }
        if (state.isSuccess) {
          SimpleToast.show(msg: SignupCubit.get(context).signupSuccess.message);
          context.router.push(const VerificationCodeRoute());
        }
      },
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 40.h),
              const SignupTitle(),
              SizedBox(height: 30.h),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(8.r),
                      topLeft: Radius.circular(8.r),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: 25.h),
                      // const SignupFormFields(),
                      SizedBox(height: 32.h),
                      const SignupButton(),
                      SizedBox(height: 24.h),
                      const SignupAlreadyHaveAccount(),
                      const OrDividerWidget(),
                      SizedBox(height: 15.h),
                      const SocialMediaSignup(),
                      SizedBox(height: 24.h)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
