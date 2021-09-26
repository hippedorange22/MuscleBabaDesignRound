import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:musclebaba_design_round/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor:  const Color(0xffDDE2F8), statusBarIconBrightness: Brightness.dark));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MuscleBaba Design Round',
      theme: ThemeData(
        fontFamily: "Manrope",
        scaffoldBackgroundColor: const Color(0xffDDE2F8),
        primaryColor: const Color(0xff4636AA),
      ),
      home:  const HomeScreen()
    );
  }
}

