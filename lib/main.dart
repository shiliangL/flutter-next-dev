import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutternext/views/HomePage.dart';
import 'package:flutternext/views/ListPage.dart';
import 'package:flutternext/views/ViewsPage.dart';
import 'package:flutternext/views/My.dart';
import 'package:flutternext/views/SearchPage.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      initialRoute: '/',
      routes: {
        '/': (context)=> new HomePage(),
        '/list': (context)=> new ListPage(),
        '/views': (context)=> new ViewsPage(),
        '/my': (context)=> new My(),
        '/search': (context)=> new SearchPage(),
      },
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 57, 188, 156),
        highlightColor: Color.fromRGBO(255, 255, 255, 0.6),
        splashColor: Colors.white70
      ),
    );
  }
}
