import 'package:flutter/material.dart';
import 'package:flutter_application_1/View/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
        textTheme: const TextTheme(
          titleLarge: TextStyle(color: Colors.black,fontFamily: 'TenorSans',fontSize: 24,fontWeight: FontWeight.bold),
          titleMedium: TextStyle(color: Colors.black,fontFamily: 'TenorSans',),
        ),
      ),
      home: const Home(),
    );
  }
}
