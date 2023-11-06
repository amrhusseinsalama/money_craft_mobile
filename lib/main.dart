import 'package:flutter/material.dart';
import 'package:money_craft_mobile/src/presentation/screens/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(surfaceTintColor: Color(0xffffffff)),
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
            brightness: Brightness.light,
            seedColor: const Color(0xffffffff))
      ),
      debugShowCheckedModeBanner: false,
      home: const OnBoarding(),
    );

}
}
