import 'package:flutter/material.dart';
import 'package:home_interior_furniture/screens/splashscreen.dart';
import 'package:splashscreen/splashscreen.dart';

class MyApp extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AppSplashScreen(),
    );
  }
}
