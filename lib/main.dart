import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'detailscreen/my_detail_screen.dart';
import 'onboarding/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'LIMINALITY INITIALIZED',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.blue,
        fontFamily: "Intel",
        inputDecorationTheme: const InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          errorStyle: TextStyle(
            height: 0,
          ),
          border: defaultInputBorder,
          enabledBorder: defaultInputBorder,
          focusedBorder: defaultInputBorder,
        ),
      ),
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => const OnboardingScreen()),
        GetPage(name: "/detail", page: () => const DetailScreen()),
      ],
    );
  }
}

const defaultInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(16)),
  borderSide: BorderSide(
    color: Color(0xFFDEE3FE),
    width: 1,
  ),
);
