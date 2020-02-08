import 'package:flutter/material.dart';
import 'package:riding_app_task/ui/screens/screen_home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white, fontFamily: 'Gilroy'),
      home: ScreenHome(),
    );
  }
}
