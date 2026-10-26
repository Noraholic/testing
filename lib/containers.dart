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
        body: Column(
         // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(),
                  color: Colors.red,
                  height: 200,
                  width: 200,
                 
                  ),
                  Container(
                  margin: EdgeInsets.symmetric(),
                  color: Colors.green,
                  height: 400,
                  width: 200,
                ),
                // Container(
                //   margin: EdgeInsets.symmetric(),
                //   color: Colors.lightGreenAccent,
                //   height: 200,
                //   width: 200,
                // ),
                 Row(
                   children: [
                     Container(
                      margin: EdgeInsets.symmetric(),
                      color: Colors.blue,
                      height: 200,
                      width: 200,
                     
                                     ),
              Container(
                  margin: EdgeInsets.symmetric(),
                  color: Colors.black,
                  height: 200,
                  width: 200,
              ),
                   
                
                Container(
                  margin: EdgeInsets.symmetric(),
                  color: Colors.orange,
                  height: 200,
                  width: 200,
                 
                ),Container(
                  margin: EdgeInsets.symmetric(),
                  color: Colors.purple,
                  height: 200,
                  width: 200,
            ),
  ],
                 ),
              ],
            ),
          ],
      ),
    ),
    );
    
  }
}