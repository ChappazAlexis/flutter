import 'dart:ui';
import 'package:flutter/material.dart';
import 'projet/homepage.dart';
import 'projet/profil.dart';



void main() {
  runApp(MyApp());
}

final routes = {
  'homepage': (context) => Homepage(),
  'profile': (context) => ProfileScreen(),
};

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  //
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: TextTheme(
              headline1: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
              headline2: TextStyle(
                  fontSize: 16,
                  color: Colors.black),
              headline3: TextStyle(
                  fontSize: 16,
                  color: Colors.grey))),
      routes: routes,
      initialRoute: 'homepage',
    );
  }
}
