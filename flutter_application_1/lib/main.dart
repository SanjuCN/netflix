import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/comingsoon/comingsoon.dart';
import 'package:flutter_application_1/view/splash_screen/splash_screen.dart';

void main() {
  runApp(const Netflix());
}

class Netflix extends StatefulWidget {
  const Netflix({super.key});

  @override
  State<Netflix> createState() => _NetflixState();
}

class _NetflixState extends State<Netflix> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splash_screen(),
    );
  }
}
