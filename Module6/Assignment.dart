import 'package:flutter/material.dart';

void main() {
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('My Shopping List '),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart))
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.shopping_basket),
            title: Text('Apples'),
          ),
          ListTile(
            leading: Icon(Icons.shopping_basket),
            title: Text('Bananas'),
          ),
          ListTile(
            leading: Icon(Icons.shopping_basket),
            title: Text('Bread'),
          ),
          ListTile(
            leading: Icon(Icons.shopping_basket),
            title: Text('Milk'),
          ),
          ListTile(
            leading: Icon(Icons.shopping_basket),
            title: Text('Eggs'),
          ),
        ],
      ),
    );
  }
}
