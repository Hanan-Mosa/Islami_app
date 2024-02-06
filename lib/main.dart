import 'package:flutter/material.dart';
import 'package:islami_app/config/application_theme_manager.dart';
import 'package:islami_app/layout/layout_view.dart';
import 'package:islami_app/moduls/quran/pages/quran_details.dart';
import 'package:islami_app/moduls/splash/pages/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Islami App ',
      theme: ApplicationThemeManager.lightTheme,
      themeMode: ThemeMode.light,
      initialRoute: SplashView.routeName,
      routes: {
        SplashView.routeName: (context) => const SplashView(),
        LayoutView.routeName: (context) => LayoutView(),
        QuranDetails.routeName: (context) => QuranDetails(),
      },
    );
  }
}
