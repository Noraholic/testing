
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My learning App'),
        ),
        body: const Center(
          child: Text(
            'Hello! I am learning Flutter step by step.',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
