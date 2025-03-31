import 'package:flutter/material.dart';
import 'package:task_7/Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}