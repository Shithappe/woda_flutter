import 'package:flutter/material.dart';
import 'package:flutter_app/pages/home.dart';
import 'package:flutter_app/pages/login.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primaryColor: Colors.greenAccent[900]
    ),
    initialRoute: '/login',
    routes: {
      '/': (context) => const Home(),
      '/login': (context) => const Login()
    },
  ));
}

