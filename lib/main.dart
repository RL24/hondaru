import 'package:flutter/material.dart';
import 'package:hondaru/src/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hondaru',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: Color.fromRGBO(40, 41, 42, 1.0),
        colorSchemeSeed: Colors.purple,
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
