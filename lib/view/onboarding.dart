import 'package:flutter/material.dart';
import 'package:grocery_app/helper/submit_button.dart';
import 'package:grocery_app/utils/page_navigator.dart';
import 'package:grocery_app/view/login.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/onboarding-bg.png'
            ),
            fit: BoxFit.cover
          )
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                'assets/icons/icon.png',
                height: 60,
              ),
              const Text(
                'Welcome\nto our store',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 48,
                  fontWeight: FontWeight.w600
                ),
              ),
              Text(
                'Ger your groceries in as fast as one hour',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: const Color(0xFFFCFCFC).withOpacity(0.7)
                ),
              ),
              const SizedBox(height: 30),
              SubmitButton(
                onPressed: () => PageNavigator.push(context, route: const Login()),
                title: 'Get Started',
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
