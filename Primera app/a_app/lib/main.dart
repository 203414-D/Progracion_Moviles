
import 'package:a_app/screens/onboarding/body_boarding.dart';
import 'package:flutter/material.dart';
import 'package:a_app/pages/register.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi primera aplicacion',
      initialRoute:'/' ,
      routes: {
        '/': (context) => BodyBoarding(),
        '/segunda':(context) => Register()
      },
    );
  }
}


