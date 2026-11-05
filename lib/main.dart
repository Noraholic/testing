import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  RxInt counter = 1.obs;
  final box = GetStorage();

  @override
  void initState() {
    super.initState();
    counter.value = box.read<int>('Counter') ?? 1;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Whatsapp'),
          backgroundColor: Colors.green,
        ),
        body: Obx(
          () => Center(
            child: Column(
              children: [
                Text('Counter: ${counter.value}'),
                ElevatedButton(onPressed: (){}, 
                child: Icon(Icons.remove))
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){
          box.write('Counter', counter.value);
          counter.value ++;
        }, child: Icon(Icons.add),
        ),
      ),
    );
  }
}
