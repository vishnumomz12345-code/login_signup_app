import 'package:flutter/material.dart';
import 'package:login_signup/SignUp_screen.dart';
import 'package:login_signup/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
     home: Scaffold(body: LoginScreen()),
    );
  }
}
