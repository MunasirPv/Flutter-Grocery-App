import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/helper/submit_button.dart';
import 'package:grocery_app/utils/page_navigator.dart';
import 'package:grocery_app/view/login_with_email.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);
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
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Text(
                    'Enter your credentials to continue',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF7C7C7C)
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Name',
                    ),
                  ),
                  const SizedBox(height: 10),
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
                  RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(
                        children: [
                          TextSpan(
                              text: 'By continuing you agree to our ',
                              style: GoogleFonts.nunito(
                                fontSize: 14, fontWeight: FontWeight.w500, color: const Color(0xFF7C7C7C),
                              )
                          ),
                          TextSpan(
                              text: 'Terms of Service\n',
                              style: GoogleFonts.nunito(
                                fontSize: 14, fontWeight: FontWeight.w500, color: Theme.of(context).primaryColor,
                              ),
                              recognizer: TapGestureRecognizer()..onTap = () => PageNavigator.push(context, route: const SignUp())
                          ),
                          TextSpan(
                            text: 'and ',
                            style: GoogleFonts.nunito(
                              fontSize: 14, fontWeight: FontWeight.w500, color: const Color(0xFF7C7C7C),
                            ),
                          ),
                          TextSpan(
                              text: 'Privacy Policy.',
                              style: GoogleFonts.nunito(
                                fontSize: 14, fontWeight: FontWeight.w500, color: Theme.of(context).primaryColor,
                              ),
                              recognizer: TapGestureRecognizer()..onTap = () => PageNavigator.push(context, route: const SignUp())
                          ),
                        ]
                    ),
                  ),
                  const SizedBox(height: 30),
                  SubmitButton(
                    onPressed: (){},
                    title: 'Sign Up',
                  ),
                  const SizedBox(height: 20),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        children: [
                          TextSpan(
                              text: 'Already have an account? ',
                              style: GoogleFonts.nunito(
                                fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black,
                              )
                          ),
                          TextSpan(
                              text: 'Sign in',
                              style: GoogleFonts.nunito(
                                fontSize: 14, fontWeight: FontWeight.w600, color: Theme.of(context).primaryColor,
                              ),
                              recognizer: TapGestureRecognizer()..onTap = () => PageNavigator.push(context, route: const LoginWithEmail())
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
