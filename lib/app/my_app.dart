import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/resources/app_context.dart';
import '../core/resources/localization/app_localizations_setup.dart';
import '../core/resources/localization/cubit/change_language_cubit.dart';
import '../core/resources/routes/app_router.dart';
import '../core/resources/theme/app_theme.dart';
import '../core/resources/theme/cubit/change_theme_cubit.dart';
import '../core/resources/theme/themes/app_theme_data.dart';
import 'constants.dart';

class MyApp extends StatefulWidget {
  static MyApp instance = const MyApp._internal();
  const MyApp._internal();
  factory MyApp() => instance;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _appRouter = AppRouter(AppContext.navigationKey);

  final _lightTheme = LightThemeData();

  final _darkTheme = DarkThemeData();

  @override
  void didChangeDependencies() {
    Future.wait([
      ChangeThemeCubit.get(context).initTheme(),
      ChangeLanguageCubit.get(context).initLanguage()
    ]);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChangeLanguageCubit, ChangeLanguageState>(
      buildWhen: (previous, current) => previous != current,
      builder: (context, languageState) {
        return BlocBuilder<ChangeThemeCubit, ChangeThemeState>(
          builder: (context, state) {
            return AppTheme(
              lightTheme: _lightTheme,
              darkTheme: _darkTheme,
              child: ScreenUtilInit(
                designSize: const Size(375, 812),
                builder: (context, child) {
                  return GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () {
                      FocusManager.instance.primaryFocus?.unfocus();
                    },
                    child:MaterialApp.router(
                      useInheritedMediaQuery: true,
                      builder: DevicePreview.appBuilder,
                      title: Constants.appName,
                      debugShowCheckedModeBanner: false,
                      theme: _lightTheme.materialThemeData,
                      darkTheme: _darkTheme.materialThemeData,
                      themeMode: ChangeThemeCubit.get(context).themeMode,
                      supportedLocales: AppLocalizationsSetup.supportedLocales,
                      localizationsDelegates:
                      AppLocalizationsSetup.localizationsDelegates,
                      locale: languageState.locale,
                      routerConfig: _appRouter.config(
                        initialRoutes: [

                          const BottomNavbarRoute(),
                        ],
                      ),
                    ),
                  );
                },
              ),
            );
          },
        );
      },
    );
  }
}
