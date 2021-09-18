import 'package:flutter/material.dart';

class PageNavigator{
  PageNavigator.push(BuildContext context,{required Widget route}){
    Navigator.push(context, MaterialPageRoute(builder: (context) => route));
  }
  PageNavigator.pushReplacement(BuildContext context,{required Widget route}){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => route));
  }
  PageNavigator.pushAndRemoveUntil(BuildContext context,{required Widget route}){
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => route),
      (Route<dynamic> route) => false,
    );
  }
}