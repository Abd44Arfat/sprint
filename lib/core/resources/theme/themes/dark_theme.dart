part of 'app_theme_data.dart';

class DarkThemeData extends AppThemeData {
  @override
  ThemeData get materialThemeData => ThemeData(
        scaffoldBackgroundColor: Colors.black,
        brightness: Brightness.dark,
        primarySwatch: Colors.white.toMaterialColor(),
        dividerTheme: _dividerThemeData,
        switchTheme: SwitchThemeData(
          thumbColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return null;
            }
            if (states.contains(MaterialState.selected)) {
              return Colors.white;
            }
            return null;
          }),
          trackColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return null;
            }
            if (states.contains(MaterialState.selected)) {
              return Colors.white;
            }
            return null;
          }),
        ),
        radioTheme: RadioThemeData(
          fillColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return null;
            }
            if (states.contains(MaterialState.selected)) {
              return Colors.white;
            }
            return null;
          }),
        ),
        checkboxTheme: CheckboxThemeData(
          fillColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return null;
            }
            if (states.contains(MaterialState.selected)) {
              return Colors.white;
            }
            return null;
          }),
        ),
      );

  @override
  Color get selectedBottomSheetColor => Colors.blueGrey;

  @override
  Color get multiDropDownCancelButtonTextColor => Colors.red;

  @override
  Color get multiDropDownConfirmButtonTextColor => Colors.green;
}
