import 'package:flutter/material.dart';
import 'package:navigation_app/pages/inicio.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ALL 4 MY',
      initialRoute:'/' ,
      routes: {
         '/': (context) => inicio(),
      },
    );
  }
}

