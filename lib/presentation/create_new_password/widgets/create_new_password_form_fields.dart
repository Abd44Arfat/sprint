// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'widgets.dart';

class CreateNewPasswordFormFields extends StatelessWidget {
  const CreateNewPasswordFormFields({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // DefaultTextFormField(
        //   inputType: TextInputType.text,
        //   textInputAction: TextInputAction.done,
        //   title: RichText(
        //     text: TextSpan(
        //         text: AppStrings.passwordStared,
        //         style: getSemiBoldStyle(
        //           color: AppColors.black12,
        //           fontSize: 16.sp,
        //         ),
        //         children: [
        //           TextSpan(
        //             text: ' ${AppStrings.passwordAllowedRangeCharacters}',
        //             style: getMediumStyle(
        //               color: AppColors.black12,
        //             ),
        //           )
        //         ]),
        //   ),
        //   isPassword: true,
        // ),
        SizedBox(height: 24.h),
        // const DefaultTextFormField(
        //   inputType: TextInputType.text,
        //   textInputAction: TextInputAction.done,
        //   title: AppStrings.confirmPassword,
        //   isPassword: true,
        // ),
      ],
    );
  }
}
