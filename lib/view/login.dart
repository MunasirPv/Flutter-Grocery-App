import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grocery_app/utils/page_navigator.dart';
import 'package:grocery_app/view/login_with_number.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            'assets/images/sign-in-bg.png',
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Get your groceries\nwith nectar',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w600
                  ),
                ),
                InkWell(
                  onTap: () => PageNavigator.push(context, route: const LoginWithNumber()),
                  child: TextFormField(
                    enabled: false,
                    decoration: const InputDecoration(
                      hintText: 'Phone number'
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                const Text(
                  'Or connect with social media',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF828282)
                  ),
                ),
                const SizedBox(height: 30),
                SocialButton(
                  onPressed: (){},
                  icon: const FaIcon(FontAwesomeIcons.google),
                  title: 'Continue with Google',
                  color: const Color(0xFF5383EC),
                ),
                const SizedBox(height: 10),
                SocialButton(
                  onPressed: (){},
                  icon: const FaIcon(FontAwesomeIcons.facebookF),
                  title: 'Continue with Facebook',
                  color: const Color(0xFF4A66AC),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SocialButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final Color color;
  final Widget icon;
  const SocialButton({Key? key, required this.onPressed, required this.title, required this.color, required this.icon}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: color,
        padding: const EdgeInsets.symmetric(vertical: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),
      ),
      icon: icon,
      label: Text(
        title,
        style: const TextStyle(
          color: Color(0xFFFCFCFC),
          fontSize: 18,
          fontWeight: FontWeight.w600
        ),
      ),
    );
  }
}

