import 'package:flutter/material.dart';

import 'splash_screen.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Health Care',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        buttonColor: Color(0xFF2de09f),
          fontFamily: 'Raleway',
      ),
      home: SplashScreen(),
    );
  }
}

