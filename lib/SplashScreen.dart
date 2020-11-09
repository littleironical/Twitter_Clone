import 'dart:async';
import 'package:flutter/material.dart';
import 'MainPage.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

// A TWITTER LOGO WILL SHOW FOR 1.5 SEC BEFORE LAUNCHING THE HOME PAGE
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(milliseconds: 1500),
      () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MainPage()))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SizedBox(height: 60.0, width: 60.0,
          child: Image.asset('assets/twitter_logo.png')
        ),
      ),
    );
  }
}
