import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatUi extends StatefulWidget {
  const ChatUi({super.key});

  @override
  State<ChatUi> createState() => _ChatUiState();
}

class _ChatUiState extends State<ChatUi> {

 bool showPassword = true;
  final passwordController = TextEditingController();
  List<String> students = [
    'Noor',
    'Hooria',
    'Dia',
    'Jannat'
    ,'Izhan',
    'Noor','Hooria',
    'Dia',
    'Jannat',
    'Izhan',
    'Noor',
  ];


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('Chat History page'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Search here',
                  prefixIcon: Icon(Icons.search),
                ),
              ),
              ),
              Row(
                children: [
                  TextButton(onPressed: (){}, 
                  child: Text('All')),
                   TextButton(onPressed: (){}, 
                  child: Text('Favourites')),
                   TextButton(onPressed: (){}, 
                  child: Text('Groups')),
                   TextButton(onPressed: (){}, 
                  child: Text('Communities')),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: students.length,
                  itemBuilder: (BuildContext context, index) {
                    return Column(
                      children: [
                        ListTile(
                          onTap: () {
                            print(index);
                            print(students[index]);
                             Get.to((name: students[index], n: index));
                          },
                           leading: CircleAvatar(
                              child: Icon(Icons.person),
                            ),
                            title: Text(students[index]),
                            subtitle: Text('helloooo, hiiii'),
                            trailing: Column(
                              children: [
                                Text('11:46 am'),
                                CircleAvatar(
                                  radius: 15,
                                  backgroundColor: Colors.green,
                                  child: Text(
                                    '1', 
                                    style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),),
                                ),
                              ],
                            ),
                        ),
                      ],
                    );
                  },
                ),
              ),
          ],
        ),
           floatingActionButton: FloatingActionButton(onPressed: (){}, 
           child: Icon(Icons.chat),
           ),
      ),
    );
  }
}