// part of 'widgets.dart';
//
// class SignupFormFields extends StatelessWidget {
//   const SignupFormFields({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<SignupCubit, SignupState>(
//       builder: (context, state) {
//         final cubit = SignupCubit.get(context);
//         final nameError = cubit.usernameError;
//         final emailError = cubit.emailError;
//         final passwordError = cubit.passwordError;
//
//         return Column(
//           children: [
//             DefaultTextFormField(
//               inputType: TextInputType.text,
//               textInputAction: TextInputAction.next,
//               title: AppStrings.yourBusinessName,
//               onChangedFunction: cubit.onUsernameChanged,
//               errorTxt: nameError,
//             ),
//             SizedBox(height: 24.h),
//             DefaultTextFormField(
//               inputType: TextInputType.emailAddress,
//               title: AppStrings.yourEmailAddress,
//               textInputAction: TextInputAction.next,
//               onChangedFunction: cubit.onEmailChanged,
//               errorTxt: emailError,
//             ),
//             SizedBox(height: 24.h),
//             DefaultTextFormField(
//               inputType: TextInputType.text,
//               textInputAction: TextInputAction.done,
//               title: RichText(
//                 text: TextSpan(
//                     text: AppStrings.passwordStared,
//                     style: getSemiBoldStyle(
//                       color: AppColors.black12,
//                       fontSize: 16.sp,
//                     ),
//                     children: [
//                       TextSpan(
//                         text: ' ${AppStrings.passwordAllowedRangeCharacters}',
//                         style: getMediumStyle(
//                           color: AppColors.black12,
//                         ),
//                       )
//                     ]),
//               ),
//               onChangedFunction: cubit.onPasswordChanged,
//               errorTxt: passwordError,
//               isPassword: true,
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
