
import 'package:flutter/material.dart';
import 'package:onboarding_view/screens/onboarding/body_boarding.dart';
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
        '/': (context) => BodyBoarding()
      },
    );
  }
}
