import 'package:actvex/presentation/signup_steps/cubit/signup_steps_cubit.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app/my_app.dart';
import 'core/resources/localization/cubit/change_language_cubit.dart';
import 'core/resources/theme/cubit/change_theme_cubit.dart';
import 'di.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // AppNotifications appNotifications = AppNotifications();
  // await appNotifications.setupNotification();

  configureDependencies();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => ChangeThemeCubit(),
        ),
        BlocProvider(
          create: (_) => ChangeLanguageCubit(),
        ),
        BlocProvider<SignupStepsCubit>(create: (context) => SignupStepsCubit()),
      ],
      child: DevicePreview(
        enabled: true,
        builder: (context) => MyApp(),
      ),    ),
  );
}
