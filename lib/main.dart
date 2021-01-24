import 'package:flutter/material.dart';
import 'Categories.dart';
import 'HomePage.dart';
import 'SignUp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drawer App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: HomePage(),
      routes: <String, WidgetBuilder>{
        "\Categories": (BuildContext context) => Categories(),
        "signup": (BuildContext context) => SignUp(),
      },
    );
  }
}
