import 'package:flutter/material.dart';
import 'package:grocery_app/helper/submit_button.dart';
import 'package:grocery_app/utils/page_navigator.dart';
import 'package:grocery_app/view/master.dart';

class SelectLocation extends StatelessWidget {
  const SelectLocation({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(color: Colors.black),
      ),
      extendBodyBehindAppBar: true,
      body: Column(
        children: [
          Image.asset(
            'assets/images/background.png',
            height: 100, width: double.infinity,
            fit: BoxFit.fill,
          ),
          Image.asset('assets/icons/location.png', scale: 2),
          const SizedBox(height: 30),
          const Text(
            'Select Your Location',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w600,
              color: Color(0xFF181725)
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Switch on your location to stay in tune with\nwhat’s happening in your area',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color(0xFF7C7C7C)
            ),
          ),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                DropdownButtonFormField(
                  decoration: const InputDecoration(
                    labelText: 'Your Zone'
                  ),
                  items: const [
                    DropdownMenuItem(child: Text('Calicut')),
                  ],
                ),
                const SizedBox(height: 10),
                DropdownButtonFormField(
                  decoration: const InputDecoration(
                    labelText: 'Your Area'
                  ),
                  items: const [
                    DropdownMenuItem(child: Text('Palazhi')),
                  ],
                ),
                const SizedBox(height: 30),
                SubmitButton(
                  onPressed: () => PageNavigator.pushAndRemoveUntil(context, route: Master()),
                  title: 'Submit',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
