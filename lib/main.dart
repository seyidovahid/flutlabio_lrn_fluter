import 'package:flutter/material.dart';
import 'package:helloworld/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Home(),
    );
  }
}

class Sandbox extends StatelessWidget {
  const Sandbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("SandBox")),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: 100,
              color: Colors.red,
              child: const Text("1"),
            ),
            Container(
              width: 200,
              color: Colors.blue,
              child: const Text("2"),
            ),
            Container(
              width: 300,
              color: Colors.green,
              child: const Text("3"),
            ),
          ],
        ));
  }
}
