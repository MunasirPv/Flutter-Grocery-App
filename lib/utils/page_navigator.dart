import 'package:flutter/material.dart';

class PageNavigator{
  PageNavigator.push(BuildContext context,{required Widget route}){
    Navigator.push(context, MaterialPageRoute(builder: (context) => route));
  }
}