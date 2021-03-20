import 'package:flutter/material.dart';
import 'package:food_project/screen/sign_up.dart';

import 'screen/launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FoodApp Project',
      home: LauncherScreen(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        SignUpScreen.routeName: (context) => SignUpScreen(),
        
      },
    );
  }
}
