import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'change_theme_state.dart';

class ChangeThemeCubit extends Cubit<ChangeThemeState> {
  ChangeThemeCubit() : super(ChangeThemeInitial());
  static ChangeThemeCubit get(BuildContext context) => BlocProvider.of(context);

  bool _isLight = true;

  ThemeMode get themeMode => _isLight ? ThemeMode.light : ThemeMode.dark;

  Future<void> initTheme() async {
    emit(ChangeThemeInitial());

    SharedPreferences prefs = await SharedPreferences.getInstance();
    final isLight = prefs.getBool("theme") ?? true;
    _isLight = isLight;
    emit(ChangeThemeInitTheme());
  }

  Future<void> changeTheme({required bool isLight}) async {
    if (_isLight == isLight) return;
    emit(ChangeThemeInitial());

    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool("theme", isLight);
    _isLight = isLight;
    emit(ChangeTheme());
  }
}
