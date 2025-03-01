import 'package:flutter/material.dart';
import 'package:helloworld/coffee_prefs.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "My Cofee Id",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.brown,
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              color: Colors.brown[200],
              child: const Text("How I like my coffee."),
            ),
            Container(
                padding: const EdgeInsets.all(10),
                color: Colors.brown[100],
                child: const CofeePrefs()),
            Expanded(
                child: Image.asset(
              "assets/img/coffee_bg.jpg",
              fit: BoxFit.fitWidth,
              alignment: Alignment.bottomCenter,
            ))
          ],
        ));
  }
}
