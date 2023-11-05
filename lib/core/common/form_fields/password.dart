import 'package:formz/formz.dart';
import '../../resources/strings_manager.dart';

class Password extends FormzInput<String, PasswordValidationError> {
  const Password.unvalidated([
    String value = '',
  ]) : super.pure(value);

  const Password.validated([
    String value = '',
  ]) : super.dirty(value);

  @override
  PasswordValidationError? validator(String value) {
    if (value.isEmpty) {
      return PasswordValidationError.empty;
    } else if (value.length < 5 || value.length > 120) {
      return PasswordValidationError.invalid;
    } else {
      return null;
    }
  }
}

enum PasswordValidationError {
  empty(AppStrings.fillField),
  invalid('');

  const PasswordValidationError(this.value);
  final String value;
}
