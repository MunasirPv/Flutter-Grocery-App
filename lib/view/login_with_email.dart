import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/helper/submit_button.dart';
import 'package:grocery_app/utils/page_navigator.dart';
import 'package:grocery_app/view/sign_up.dart';

class LoginWithEmail extends StatelessWidget {
  const LoginWithEmail({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/images/background.png',
              height: 100, width: double.infinity,
              fit: BoxFit.fill,
            ),
            Image.asset('assets/icons/colored_icon.png', scale: 2),
            const SizedBox(height: 70),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Text(
                    'Enter your emails and password',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF7C7C7C)
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Email',
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      suffix: InkWell(
                        child: FaIcon(FontAwesomeIcons.eyeSlash, color: Color(0xFF7C7C7C),),
                      )
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Forgot Password?',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 30),
                  SubmitButton(
                    onPressed: (){},
                    title: 'Login',
                  ),
                  const SizedBox(height: 20),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Don`t have an account? ',
                          style: GoogleFonts.nunito(
                            fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black,
                          )
                        ),
                        TextSpan(
                          text: 'Sign up',
                          style: GoogleFonts.nunito(
                            fontSize: 14, fontWeight: FontWeight.w600, color: Theme.of(context).primaryColor,
                          ),
                          recognizer: TapGestureRecognizer()..onTap = () => PageNavigator.push(context, route: const SignUp())
                        ),
                      ]
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
