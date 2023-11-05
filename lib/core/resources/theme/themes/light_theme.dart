part of 'app_theme_data.dart';

class LightThemeData extends AppThemeData {
  @override
  ThemeData get materialThemeData => ThemeData(
      scaffoldBackgroundColor: Colors.white,
      brightness: Brightness.light,
      primarySwatch: Colors.black.toMaterialColor(),
      dividerTheme: _dividerThemeData,
      appBarTheme: AppBarTheme(
        titleTextStyle: getRegularStyle(
          color: Colors.white,
          fontSize: 14,
        ),
      ));

  @override
  Color get selectedBottomSheetColor => Colors.orange;

  @override
  Color get multiDropDownCancelButtonTextColor => Colors.redAccent;

  @override
  Color get multiDropDownConfirmButtonTextColor => Colors.greenAccent;
}
