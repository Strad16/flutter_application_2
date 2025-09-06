import 'package:flutter/material.dart';

class PavlovaScreen extends StatelessWidget {
  const PavlovaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              child: const Text(
                "Strawberry Pavlova",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: const Text(
                "Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova. "
                "Pavlova features a crisp crust and soft, light inside, topped with fruit and whipped cream.",
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.star, color: Colors.black),
                Icon(Icons.star, color: Colors.black),
                Icon(Icons.star, color: Colors.black),
                Icon(Icons.star, color: Colors.black),
                Icon(Icons.star, color: Colors.black),
                SizedBox(width: 8),
                Text("170 Reviews"),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Column(
                  children: [
                    Icon(Icons.kitchen, color: Colors.green),
                    Text("PREP:"),
                    Text("25 min"),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.timer, color: Colors.green),
                    Text("COOK:"),
                    Text("1 hr"),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.restaurant, color: Colors.green),
                    Text("FEEDS:"),
                    Text("4-6"),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
