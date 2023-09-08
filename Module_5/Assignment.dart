import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        toolbarHeight: 100,
        elevation: 70,
        leading: Icon(Icons.home),
        centerTitle: true,
        title: Text('Home'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.comment)),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('This is mod 5 Assignment'),
            RichText(
              text: TextSpan(
                  text: 'My',
                  style: TextStyle(color: Colors.redAccent, fontSize: 18),
                  children: [
                    TextSpan(
                        text: ' phone',
                        style:
                            TextStyle(color: Colors.blueAccent, fontSize: 14)),
                    TextSpan(
                      text: ' name is ',
                      style: TextStyle(
                        color: Colors.purple,
                        fontSize: 14,
                      ),
                    ),
                    TextSpan(
                      text: 'Techno Spark 8 pro',
                      style: TextStyle(color: Colors.deepOrange, fontSize: 22),
                    ),
                  ]),
            ),
          ],
          //Text('My phone name is Tecno Spark8 Pro')
        ),
      ),
    );
  }
}
