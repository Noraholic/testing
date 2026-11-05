import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_application/chatUI.dart';
import 'package:project_application/test_assesment.dart/chat_ui.dart';

void maim(){
  runApp(MyApp());
}

class Loginpage extends StatelessWidget {
  Loginpage({super.key});

  final email = TextEditingController();
  final password = TextEditingController();

  String correctEmail = "abcd@gmail.com";
  String correctPassword = "123456789";

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text('Welcome to login page'),
          centerTitle: true,
        ),

        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.purple , Colors.white
              ])
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Enter your email',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email)
                    ),
                  ),
                  SizedBox(height: 20),
                   TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Enter your password',
                      border: OutlineInputBorder(),
                     prefixIcon: Icon(Icons.password)
                    ),
                  ),
                  SizedBox(height: 20,),
                  ElevatedButton(onPressed: (){
                    if (email.text == correctEmail && password.text == correctPassword)
                    {
                      Get.to(const ChatUi());
                    }
                    // else{
                    //    Get.snackbar("Login Failed", "Wrong Login Details");
                    // }
                  }, 
                      style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shadowColor: Colors.white,  
                      ),
                   child: Text('Login')
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