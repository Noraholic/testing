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
  List<String> students = [
    'Noor','Hooria','Dia','Jannat','Izhan','Noor','Hooria','Dia',
    'Jannat','Izhan','Noor','Hooria','Dia','Jannat','Izhan',
    'Noor','Hooria','Dia','Jannat','Izhan','Noor','Hooria','Dia','Jannat','Izhan'
  ];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('TestPage'),
        ),
           body: Column(
             children: [
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search Here',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(150)
                    )
                  ),
                ),
              ),
               TextButton(onPressed: (){}, 
               child: Text('unread')),
               Expanded(
                 child: ListView.builder(
                  itemCount: students.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            child: Icon(Icons.person),
                          ),
                          title: Text(students[index]),
                          subtitle: Text('helloooo, hiiii'),
                          trailing: Column(
                            children: [
                              Text('10:00 am'),
                              CircleAvatar(
                                radius: 12,
                                backgroundColor: Colors.green,
                                child: Text(
                                  '1', 
                                  style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),),
                              )
                            ],
                          ),
                        ),
                        Divider(
                          height: 1,
                          thickness: 0.5,
                          color: Colors.grey,
                        )
                      ],
                    );
                  }
                  ),
               ),
             ],
           ),
           floatingActionButton: FloatingActionButton(onPressed: (){}, 
           child: Icon(Icons.chat),),
          ),
      );
  }
}