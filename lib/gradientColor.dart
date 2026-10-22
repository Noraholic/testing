import 'package:flutter/material.dart';


void main(){
  runApp(const GradientColor());
}

class GradientColor extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('BSIT Login Form'),
        ),
        body: Container(
          
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.blueGrey, const Color.fromARGB(255, 165, 132, 171), const Color.fromARGB(255, 111, 67, 118)
            ])
          ),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                Text(
                  'welcome to login form',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "enter your email",
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.password),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "enter your password",
                  ),
                ),
               SizedBox(
                  height: 20,
                ),
                 TextField(
                
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.numbers),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "enter your number",
                  ),
                ),
                 SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                  onPressed: (){}, child: Text('login'),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}