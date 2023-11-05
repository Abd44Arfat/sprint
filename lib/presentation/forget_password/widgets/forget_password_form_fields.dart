// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'widgets.dart';

class ForgetPasswordFormFields extends StatelessWidget {
  const ForgetPasswordFormFields({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextFormField(
      inputType: TextInputType.emailAddress,
      initialValue: '',
      title: AppStrings.email.tr(context),
      textInputAction: TextInputAction.next,
    );
  }
}
