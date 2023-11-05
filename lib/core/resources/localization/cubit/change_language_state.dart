part of 'change_language_cubit.dart';

@immutable
abstract class ChangeLanguageState extends Equatable {
  final Locale locale;
  const ChangeLanguageState(this.locale);

  @override
  List<Object> get props => [locale];
}

class ChangeLanguage extends ChangeLanguageState {
  const ChangeLanguage(super.locale);
  @override
  List<Object> get props => [super.props];
}
