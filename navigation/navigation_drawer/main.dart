import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'Drawer demo';

    return MaterialApp(
      title: title,
      home: Scaffold(
        body: DemoPageOne(),
      ),
    );
  }
}

class DemoPageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page One"),
      ),
      body: const Center(
        child: Text('Demo: Page One'),
      ),
      drawer: const MyDrawerWidget(),
    );
  }
}

class DemoPageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page Two"),
      ),
      body: const Center(
        child: Text('Demo: Page Two'),
      ),
      drawer: const MyDrawerWidget(),
    );
  }
}

class DemoPageThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page Three"),
      ),
      body: const Center(
        child: Text('Demo: Page Three'),
      ),
      drawer: const MyDrawerWidget(),
    );
  }
}

class DemoPageFour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page Four"),
      ),
      body: const Center(
        child: Text('Demo: Page Four'),
      ),
      endDrawer: const MyDrawerWidget(),
    );
  }
}

class MyDrawerWidget extends StatelessWidget {
  const MyDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            child: Icon(Icons.home, size: 35),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Drawer Item #1'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => DemoPageOne()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('Drawer Item #2'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => DemoPageTwo()),
              );
            },
          ),
          ListTile(
              leading: const Icon(Icons.favorite),
              title: const Text('Drawer Item #3'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => DemoPageThree()),
                );
              }),
          ListTile(
              leading: const Icon(Icons.list),
              title: const Text('Drawer Item #4'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => DemoPageFour()),
                );
              }),
        ],
      ),
    );
  }
}
