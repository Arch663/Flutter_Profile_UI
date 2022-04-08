import 'package:flutter/material.dart';
import 'package:profile/profile.dart';
import 'package:profile/dashboard.dart';
import 'package:profile/login.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'poppins'),
      debugShowCheckedModeBanner: false,
      home: const Login(
      ),
    );
  }
}
