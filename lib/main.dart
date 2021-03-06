import 'package:camgo_mobile/home.dart';
import 'package:camgo_mobile/screens/view/login_by_email_page.dart';
import 'package:camgo_mobile/screens/view/login_by_phone_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  LoginByPhonePage(),
    );
  }
}
