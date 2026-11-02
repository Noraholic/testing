import 'package:flutter/material.dart';
import 'package:project_application/dashboard.dart';
import 'package:get/get.dart';
import 'login.dart';
void main(){
  runApp(const MyApp());
}

 class MyApp extends StatefulWidget {
  const new({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool showPassword = true;
  final passwordController = TextEditingController();
  final name = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();
  

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('welcome to Registration page'),
          centerTitle: true,
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.purple, Colors.blue
              ],
              begin: Alignment.topCenter,
              end: AlignmentGeometry.bottomCenter
              ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Registration Form here",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                  ),
                  TextField(
                    controller: name,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Icon(Icons.email),
                      hintText:"Full name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      )
                    ),
                  ),
                  SizedBox(height: 10,),
                   TextField(
                    controller: email,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText:"Enter Email",
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      )
                    ),
                  ),
                  SizedBox(height: 10),
                   TextField(
                    controller: password,
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText:"Enter Password",
                      prefixIcon: Icon(Icons.password_outlined),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      )
                    ),
                  ),
                  SizedBox(height: 10),
                   TextField(
                    controller: confirmPassword,
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Icon(Icons.password_outlined),
                      hintText:"Confirm Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      )
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      gradient: LinearGradient(
                        colors: [
                          Colors.orange, Colors.red
                        ]
                        ),
                    ),
                     
                       child: ElevatedButton(onPressed: (){
                                Get.to(Dashboard(
                                  name: name.text,
                                  email: email.text,
                                ));
                                // print('login button clicked');
                                // print(name.text);
                                // print(email.text);
                                // print(password.text);
                                // print(confirmPassword.text);
                              },
                                    style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.white,
                                          shadowColor: Colors.white,  
                                          ),
                                          
                          child: Text('Register here'),
                        ),
                     ),
                     GestureDetector(
                      onTap: () {
                        Get.to(Login());
                      },
                       child: Text(
                        'Already has an account? Login',
                       style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                       ),
                       ),
                     ),
                  ],
              ),
            ),
          ),
        ),
        ),
      );
  }
}