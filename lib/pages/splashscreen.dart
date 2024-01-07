import 'dart:async';
import 'package:flutter/material.dart';
import '../bottom_nav_bar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 5),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const BottomNavBar())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Splash Screen",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  fontFamily: AutofillHints.namePrefix),
            ),
            const SizedBox(
              height: 20,
            ),
            FlutterLogo(
              size: MediaQuery.of(context).size.height / 4,
            ),
          ],
        ),
      )),
    );
  }
}
