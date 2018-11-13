import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutternext/views/HomePage.dart';

void main() {
  runApp(
    MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context)=> new HomePage(title:'首页'),
      },
      theme: ThemeData(
        primaryColor: Colors.indigoAccent,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.6),
        splashColor: Colors.white70
      ),
    );
  }
}
