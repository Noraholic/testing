import 'package:flutter/material.dart';
import 'chatUI.dart';

void main(){
  runApp(MyApp());
}

class ChatUserInterface extends StatelessWidget {
  ChatUserInterface({super.key, required this.name, required this.n});
  final String name;
  final int n;

  List<String> send =[
    'Hi', 'Hello', 'How are you?','i am great',  'what are you upto?', 'nothing much', 'Ok'
  ];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('$name'),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 7,
                itemBuilder: (context, index){
                  bool isMe = index % 2 != 0;
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: isMe ? Alignment.centerLeft : Alignment.centerRight,
                      child: Container(
                                padding: EdgeInsets.all(12.0),
                                color: Colors.green,
                                child: Column(
                                  children: [
                                    Text(send[index]),
                                  ],
                                ),
                              ),
                    ),
                  );
                }
                ),
            ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder()
              ),
             ),
           ),
          ],
        ),
      ),
    );
  }
}

