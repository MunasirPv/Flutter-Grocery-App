import 'package:flutter/material.dart';
import 'package:grocery_app/helper/bottom_bar.dart';
import 'package:grocery_app/view/home.dart';

class Master extends StatelessWidget {
  final navigatorKey = GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Navigator(
        key: navigatorKey,
        initialRoute: '/',
        onGenerateRoute: (RouteSettings settings){
          late WidgetBuilder builder;
          switch(settings.name){
            case '/':
              builder = (BuildContext context) => Home();
              break;
          }
          return MaterialPageRoute(settings: settings, builder: builder);
        },
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}

