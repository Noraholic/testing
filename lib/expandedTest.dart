import 'package:flutter/material.dart';

void main(){
  runApp(const ExpandedTest());
}

class ExpandedTest extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amberAccent,
          title: Text('trying expanded widget'),

        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
            child: Container(
                height: 200,
                color: Colors.deepPurple,
              ),
            ),
            Expanded(
           child: Container(
                height: 200,
                color: Colors.pink,
              ),
            ),
            Expanded(
          child: Container(
                height: 200,
                color: Colors.lightGreen,
              ),
            ),
          ],
        
        ),
      ),
    );
  }
}