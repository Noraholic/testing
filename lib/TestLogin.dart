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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 74, 28, 82),
          title: Text('TestPage'),
        ),
        body: Column(
          children: [
            TextField(
              controller: passwordController,
              obscureText: showPassword,
              decoration: InputDecoration(
                hintText: 'password',
                border: OutlineInputBorder(),
                prefix: Icon(Icons.password),
                  suffixIcon: IconButton(onPressed: (){
                    setState(() {
                       showPassword = !showPassword;
                    });
                  }, 
                  icon: Icon(Icons.remove_red_eye))
              ),
            ),
            ElevatedButton(onPressed: (){
               print(passwordController.text);
            }, 
            child: Text("login")),
          ],
        ),
      ),
    );
  }
}