import 'package:flutter/material.dart';

class CofeePrefs extends StatefulWidget {
  const CofeePrefs({super.key});

  @override
  State<CofeePrefs> createState() => _CofeePrefsState();
}

class _CofeePrefsState extends State<CofeePrefs> {
  int strength = 1;
  int sugars = 1;

  void increaseStrength() {
    setState(() {
      strength = strength < 5 ? strength + 1 : 1;
    });
  }

  void increaseSugars() {
    setState(() {
      sugars = sugars < 5 ? sugars + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    var colors = Colors;
    return Column(
      children: [
        Row(
          children: [
            const Text("Strength: "),
            for (int i = 0; i < strength; i++)
              Image.asset(
                "assets/img/coffee_bean.png",
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            const Expanded(
              child: SizedBox(),
            ),
            // ignore: prefer_const_constructors
            FilledButton(
                style: FilledButton.styleFrom(
                  backgroundColor: Colors.brown,
                  foregroundColor: Colors.white,
                ),
                onPressed: increaseStrength,
                child: const Text("+"))
          ],
        ),
        Row(
          children: [
            const Text("Sugars: "),
            if (sugars == 0) const Text("no sugars..."),
            for (int i = 0; i < sugars; i++)
              Image.asset(
                "assets/img/sugar_cube.png",
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            const Expanded(
              child: SizedBox(),
            ),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.brown,
                foregroundColor: Colors.white,
              ),
              onPressed: increaseSugars,
              child: const Text("+"),
            )
          ],
        )
      ],
    );
  }
}
