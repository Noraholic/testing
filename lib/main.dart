import 'package:flutter/material.dart';

void main(){
  runApp( const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('it is student profile'),
          ),
      body: Center( 
        child: Container(
          height: 200,
width: 280,
margin: const EdgeInsets.all(20),
padding: const EdgeInsets.all(30),
color: Colors.purpleAccent,
         child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const[
            Text( 'student name',
            style: TextStyle(
              color: Colors.black,
              fontSize: 22,

            
            ),
            ),

          ],
         ),

        ),
      ),
      ),
      );
  }
}
             