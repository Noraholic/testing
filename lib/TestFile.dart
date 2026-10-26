import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());

}
class MyApp extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text('Test'),
        ),
        body: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.red,
                   ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      color: Colors.green,
                      ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.lightGreenAccent,
                      ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.blue,
                     ),
                  ), 
                  Expanded(
                    child: Container(
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.orange,
                      ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.purple,
                     ),
                  ),
                ],
              ),
            )
          ],
        ),     
      ),
    );
  }
}