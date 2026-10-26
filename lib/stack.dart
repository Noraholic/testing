import 'package:flutter/material.dart';
import 'package:project_application/containers.dart';

void main(){
  runApp(MyApp());
}

class Stack extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('test'),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [

          ],
        ),
      ),
    );
  }
}