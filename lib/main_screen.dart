import 'package:flutter/material.dart';
import 'package:simple_pomodoro/screens/timerservice.dart';
import 'package:simple_pomodoro/screens/widgets/progress.dart';
import 'package:simple_pomodoro/screens/widgets/timecontroller.dart';
import 'package:simple_pomodoro/screens/widgets/timercard.dart';
import 'package:simple_pomodoro/screens/widgets/timeroptions.dart';
import 'package:provider/provider.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 145, 218, 252),
      appBar: AppBar(
        title: const Text(
          'Simple Pomodoro',
          style: TextStyle(fontSize: 24.0),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            iconSize: 30,
            color: Colors.white,
            onPressed: () =>
                Provider.of<timerservice>(context, listen: false).reset(),
          ),
        ],
        leading: IconButton(
          icon: const Icon(
            Icons.access_alarm,
          ),
          iconSize: 30,
          color: Colors.white,
          onPressed: () {
            Provider.of<timerservice>(context, listen: false).handleNextRound();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              const TimerCard(),
              const SizedBox(
                height: 50,
              ),
              timerOptions(),
              const SizedBox(
                height: 100,
              ),
              const timeController(),
              const SizedBox(
                height: 80,
              ),
              const progress()
            ],
          ),
        ),
      ),
    );
  }
}
