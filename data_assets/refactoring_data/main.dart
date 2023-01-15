import 'package:flutter/material.dart';

void main() {
    runApp(MyApp());
}

class MyData {
    final List<String> items = [
    'January', 
    'February', 
    'March', 
    'April',
    'May', 
    'June', 
    'July', 
    'August',
    'September', 
    'October', 
    'November', 
    'December'
  ];
  
  MyData();
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final MyData data = MyData();

  
  @override
  Widget build(BuildContext context) {
    
    const title = 'MyAwesomeApp';
    List items = data.items;

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(items[index]),
            );
          },
        ),
      ),
    );
  }
}
