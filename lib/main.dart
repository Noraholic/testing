import 'package:flutter/material.dart';
import 'chatUI.dart';

void main(){
  runApp(MyApp());
}

class ChatUserInterface extends StatelessWidget {
  const ChatUserInterface({super.key, required this.name, required this.n});
  final String name;
  final int n;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('$name'),
        ),
        body: Container(
          child: Text("body"),
        ),
      ),
    );
  }
}

