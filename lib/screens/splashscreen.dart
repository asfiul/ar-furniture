import 'package:flutter/material.dart';
import 'package:home_interior_furniture/screens/item_screen.dart';
import 'package:splashscreen/splashscreen.dart';

class AppSplashScreen extends StatefulWidget {
  @override
  _AppSplashScreenState createState() => _AppSplashScreenState();
}

class _AppSplashScreenState extends State<AppSplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      backgroundColor: Colors.white,
      navigateAfterSeconds: Items(),
      seconds: 3,
      title: Text(
        'Home Interior Furniture',
        style: TextStyle(
            fontSize: 26, fontWeight: FontWeight.bold, color: Colors.black),
      ),
      image: Image.asset('items/im2.png'),
      photoSize: 200,
      loaderColor: Colors.deepPurple,
      loadingText: Text(
        'Loading ...',
        style: TextStyle(color: Colors.black, fontSize: 12),
      ),
    );
  }
}
