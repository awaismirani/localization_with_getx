// ignore_for_file: depend_on_referenced_packages, always_use_package_imports
import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'helper/binding.dart';
import 'helper/shared_pref.dart';
import 'translations/translations.dart';
import 'view/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefHelper.init();
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Localization With Getx",
      debugShowCheckedModeBanner: false,
      initialBinding: Binding(),
      translations: Translation(),
      locale: Locale('en', 'US'),
      // fallbackLocale: controller.appLocale,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ar'),
        Locale('en'),
      ],
      home: HomeScreen(),
    );
  }
}
