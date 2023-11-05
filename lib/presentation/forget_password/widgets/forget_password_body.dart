part of 'widgets.dart';

class ForgetPasswordBody extends StatelessWidget {
  const ForgetPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height -
              MediaQuery.paddingOf(context).top,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 15.h),
              const ForgetPasswordTitle(),
              SizedBox(height: 30.h),
              Flexible(
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
                    children: [
                      SizedBox(height: 25.h),
                      const ForgetPasswordFormFields(),
                      SizedBox(height: 16.h),
                      const ForgetPasswordButton(),
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
