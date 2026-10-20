import 'package:flutter/material.dart';

void main(){
  runApp(const Login());
}

 class Login extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amberAccent,
          title: Text('welcome to login page'),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder()
                        ),
                      ),
                      SizedBox(height: 20,),
                      ElevatedButton(onPressed: (){}, child: Text('log in')),

                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}