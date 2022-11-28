import 'package:flutter/material.dart';
import 'package:flutter_app/pages/ToLogin.dart';
import 'package:flutter_app/pages/home.dart';
import 'package:flutter_app/pages/login.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Colors.greenAccent
    ),
    initialRoute: '/tologin',
    routes: {
      '/home': (context) => const Home(),
      '/login': (context) => const Login(),
      '/tologin': (context) => const ToLogin()
    },
  ));
}

