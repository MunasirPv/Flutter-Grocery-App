import 'package:flutter/material.dart';
import 'package:grocery_app/helper/bottom_bar.dart';
import 'package:grocery_app/view/home.dart';
import 'package:grocery_app/general/global_values.dart' as global;

class Master extends StatelessWidget {
  const Master({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      key: global.scaffoldKey,
      body: Navigator(
        key: global.navigatorKey,
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

