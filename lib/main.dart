import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_calculator/screen/main_screen.dart';

void main() => runApp(Application());

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(title: 'Flutter Demo Home Page'),
    );
  }
}


