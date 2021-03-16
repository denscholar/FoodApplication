import 'package:flutter/material.dart';

import 'screen/lancher.dart';

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
    );
  }
}
