import 'package:flutter/material.dart';
import 'package:simple_pomodoro/splashscreen.dart';
import 'package:simple_pomodoro/screens/timerservice.dart';
import 'package:provider/provider.dart';

void main() => runApp(ChangeNotifierProvider<timerservice>(
      create: (_) => timerservice(),
      child: const MyApp(),
    ));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Pomodoro',
      home: SplashScreen(),
    );
  }
}
