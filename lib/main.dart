
import 'package:flutter/material.dart';
import 'package:challenge1mc/pages/firstpage.dart';
import 'package:challenge1mc/pages/secondepage.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Challenge 1 MC',
      routes: {
        "/secondpage": (context) => const SecondPage(),
      },
      home: const MyHomePage(),
    );
  }
}

