import 'package:flutter/material.dart';
import 'package:hello_dimipay/activities/main_activity.dart';

import 'maps/colors.dart';

void main() {
  runApp(const Runner());
}

class Runner extends StatelessWidget {
  const Runner({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dimipay kiosk demo',
      theme: ThemeData(
        scaffoldBackgroundColor: CustomColor.primary.value,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();

  static _HomeState? of(BuildContext context) =>
      context.findAncestorStateOfType<_HomeState>();
}

class _HomeState extends State<Home> {
  var user = "이연준";
  var userDetail = "1학년 3반 24번";

  var isFaceSignAvailable = false;

  void changeFaceSignState() {
    setState(() {
      if (isFaceSignAvailable) {
        isFaceSignAvailable = false;
      }else {
        isFaceSignAvailable = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MainActivity();
  }
}
