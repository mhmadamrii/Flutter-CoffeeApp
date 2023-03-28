import 'package:coffeeshop/screens/homepage.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Coffee shop",
      debugShowCheckedModeBanner: false,
      home: const Homepage(),
      theme: ThemeData(brightness: Brightness.dark),
    );
  }
}

