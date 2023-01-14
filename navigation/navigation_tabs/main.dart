import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter and Dart Cookbook Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        tabBarTheme: const TabBarTheme(
          labelColor: Colors.white,
          labelStyle: TextStyle(color: Colors.grey),
// color for text
        ),
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter and Dart Cookbook'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('MyAwesomeTabBar'),
            bottom: const TabBar(
//               indicatorColor: Colors.black,
              tabs: [
                Tab(
                  icon: Icon(Icons.home, color: Colors.white),
                  child: Text('Home',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                Tab(
                  icon: Icon(Icons.account_balance, color: Colors.white),
                  child: Text('Account',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                Tab(
                  icon: Icon(Icons.calculate, color: Colors.white),
                  child: Text('Payments',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                Tab(
                  icon: Icon(Icons.credit_score, color: Colors.white),
                  child: Text('Card',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              SizedBox(
                child: Center(
                  child: Text('Home Page Tab 1'),
                ),
              ),
              SizedBox(
                child: Center(
                  child: Text('Account Page Tab 2'),
                ),
              ),
              SizedBox(
                child: Center(
                  child: Text('Payments Page Tab 3'),
                ),
              ),
              SizedBox(
                child: Center(
                  child: Text('Card Page Tab 4'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
