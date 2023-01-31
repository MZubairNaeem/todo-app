import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:page_transition/page_transition.dart';
import 'package:todo/screen/home.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() async {

  await Hive.initFlutter();
  var box = await Hive.openBox('mybox');

  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo List',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: AnimatedSplashScreen(
        duration: 1000,
          splash: Image.asset('assets/icon.png'),
          nextScreen: const Home(),
          splashTransition: SplashTransition.slideTransition,
          backgroundColor: Colors.indigo
      ));
  }
}
