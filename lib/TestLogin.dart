import 'package:flutter/material.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool showPassword = true;
  final passwordController = TextEditingController();
  List<String> students = [
    'Noor','Hooria','Dia','Jannat','Izhan'
  ];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 74, 28, 82),
          title: Text('TestPage'),
        ),
           body: ListView(
            children: [
             ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person),
              ),
              title: Text('ali'),
              subtitle: Text('hello'),
              trailing: Icon(Icons.arrow_forward),
             )
            ],
           ),
             
           ),
      );
  }
}