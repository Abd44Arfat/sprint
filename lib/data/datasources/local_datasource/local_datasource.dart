import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String kPrefsIsLightTheme = "is_light_theme";
const String kPrefsKeyIsOnBoardingScreenViewed =
    "PREFS_KEY_IS_ONBOARDING_SCREEN_VIEWED";

@injectable
class LocalDataSource {
  final SharedPreferences _sharedPreferences;

  LocalDataSource(this._sharedPreferences);
}
