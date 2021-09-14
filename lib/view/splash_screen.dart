import 'dart:async';

import 'package:flutter/material.dart';
import 'package:grocery_app/utils/page_navigator.dart';
import 'package:grocery_app/view/onboarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () => PageNavigator.push(context, route: const Onboarding()));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Image.asset(
          'assets/icons/logo.png',
          scale: 2,
        ),
      ),
    );
  }
}
