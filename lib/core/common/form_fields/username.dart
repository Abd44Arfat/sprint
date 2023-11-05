import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import '../../resources/strings_manager.dart';

class Username extends FormzInput<String, UsernameValidationError>
    with EquatableMixin {
  const Username.unvalidated([
    String value = '',
  ])  : isAlreadyRegistered = false,
        super.pure(value);

  const Username.validated(
    String value, {
    this.isAlreadyRegistered = false,
  }) : super.dirty(value);

  final bool isAlreadyRegistered;

  @override
  UsernameValidationError? validator(String value) {
    if (value.isEmpty) {
      return UsernameValidationError.empty;
    } else {
      if (isAlreadyRegistered) {
        return UsernameValidationError.alreadyTaken;
      }
    }

    return null;
    // return value.isEmpty
    //     ? UsernameValidationError.empty
    //     : (isAlreadyRegistered
    //         ? UsernameValidationError.alreadyTaken
    //         : (_usernameRegex.hasMatch(value)
    //             ? null
    //             : UsernameValidationError.invalid));
  }

  @override
  List<Object?> get props => [
        value,
        isAlreadyRegistered,
        isPure,
      ];
}

enum UsernameValidationError {
  empty(AppStrings.fillField),
  alreadyTaken('');

  const UsernameValidationError(this.value);
  final String value;
}
