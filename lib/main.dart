import 'package:flutter/material.dart';
import 'login.dart';
void main(){
  runApp(const MyApp());

}
class MyApp extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text('my app'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(),
                  color: Colors.blue,
                  height: 200,
                  width: 200,
                  child: Text('flutter app code',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.black,

                  )
                ),
                ),
                 Container(
                  margin: EdgeInsets.symmetric(),
                  color: Colors.orange,
                  height: 200,
                  width: 200,
                 
                ),
                Container(
                  margin: EdgeInsets.symmetric(),
                  color: Colors.yellow,
                  height: 200,
                  width: 200,
                 
                ),
          
              ],
            ),
             Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(),
                  color: Colors.deepPurple,
                  height: 200,
                  width: 200,
                ),
                  Container(
                  margin: EdgeInsets.symmetric(),
                  color: Colors.cyanAccent,
                  height: 200,
                  width: 200,
                ),
                 Container(
                  margin: EdgeInsets.symmetric(),
                  color: Colors.pink,
                  height: 200,
                  width: 200,
                ),
              ],
             ),
          ],
        ),
      ),
    );
    
  }
}