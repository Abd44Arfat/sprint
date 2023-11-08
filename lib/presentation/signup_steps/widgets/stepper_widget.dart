part of 'widgets.dart';

class StepperWidget extends StatelessWidget {
  const StepperWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: AppColors.primaryColor,
                border: Border.all(color: AppColors.primaryColor),
              ),
            ),
            // Shadow container placed above the first container
            Positioned(
              top: 10,
              left: 10,
              child: Container(
                width: 20,
                height: 20,
                decoration: ShapeDecoration(
                  color: Color.fromARGB(255, 253, 253, 253),
                  shape: const CircleBorder(),
                  shadows: [
                    BoxShadow(
                      color: Color(0x4C111012),
                      blurRadius: 3,
                      offset: Offset(0, 2),
                      spreadRadius: 0,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 8.w),
            height: 1,
            color: AppColors.primaryColor,
          ),
        ),
        BlocBuilder<SignupStepsCubit, SignupStepsState>(
          builder: (context, state) {
            return Stack(
              children: [
             Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color:  SignupStepsCubit.get(context).stepIndex == 1?  AppColors.primaryColor:AppColors.white,
                    border: Border.all(color: AppColors.primaryColor),
                  ),
                ),
                // Shadow container placed above the first container
              Positioned(
                  top: 10,
                  left: 10,
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: ShapeDecoration(
                      color: Color.fromARGB(255, 253, 253, 253),
                      shape: const CircleBorder(),
                      shadows: [
                        BoxShadow(
                          color: Color(0x4C111012),
                          blurRadius: 3,
                          offset: Offset(0, 2),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                  ),


                  
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}
