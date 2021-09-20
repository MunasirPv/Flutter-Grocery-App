import 'package:flutter/material.dart';
import 'package:grocery_app/general/global_values.dart' as global;

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
  PageNavigator.pushWithGlobal({required Widget route}){
    BuildContext? context = global.scaffoldKey.currentContext;
    Navigator.push(context!, MaterialPageRoute(builder: (context) => route));
  }
}