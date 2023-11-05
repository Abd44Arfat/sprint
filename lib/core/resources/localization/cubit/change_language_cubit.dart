import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../language_manager.dart';

part 'change_language_state.dart';

class ChangeLanguageCubit extends Cubit<ChangeLanguageState> {
  ChangeLanguageCubit() : super(const ChangeLanguage(Locale(englishCode)));

  static ChangeLanguageCubit get(BuildContext context) =>
      BlocProvider.of(context);

  bool _isEnglish = true;

  Locale get getLocale => _isEnglish ? englishLocal : arabicLocal;

  Future<void> initLanguage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    final isEnglish = prefs.getBool("lang") ?? true;
    _isEnglish = isEnglish;
    emit(ChangeLanguage(getLocale));
  }

  Future<void> changeLanguage({bool? isEnglish}) async {
    isEnglish ??= !_isEnglish;

    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool("lang", isEnglish);
    _isEnglish = isEnglish;
    emit(ChangeLanguage(getLocale));
  }
}
