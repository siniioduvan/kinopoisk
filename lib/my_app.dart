import 'package:flutter/material.dart';
import 'package:kinopoisk/pages/login/login.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(useMaterial3: false),
      home: LoginPage(),
    );
  }
}
