import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_application/dashboard.dart';

void main(){
  runApp( Login());
}

 class Login extends StatelessWidget {
   new({super.key});

 final email = TextEditingController();
  final password = TextEditingController();

  String correctEmail = "abc@gmail.com";
  String correctPassword = "123456789";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amberAccent,
          title: Text('welcome to login page'),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.purple, Colors.blue
              ]
              ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "LOgin Here",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText:"Email",
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      )
                    ),
                  ),
                  SizedBox(height: 10,),
                   TextField(
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
                                if(email.text == correctEmail && password.text == correctPassword)
                                {
                                  Get.to(Dashboard(name: 'abcd', email: email.text));
                                }
                                else{
                                  Get.snackbar("Login Failed", "Wrong Login Details");
                                }
                              },
                                    style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.white,
                                          shadowColor: Colors.white,  
                                          ),
                          child: Text('Login'),
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