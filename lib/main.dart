import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/Pages/login_screen.dart';

import 'Pages/find_partner_screen.dart';
import 'Pages/home_screen.dart';
import 'Pages/login_signup_screen.dart';
import 'Pages/message_screen.dart';
import 'Pages/signup_screen.dart';
import 'Pages/suggestions_partners.dart';
import 'Widget/message_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    statusBarColor: Colors.transparent;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color.fromRGBO(255, 111, 0, 1),
        hintColor: const Color.fromRGBO(143, 143, 143, 1),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return SignupScreen();
  }
}
