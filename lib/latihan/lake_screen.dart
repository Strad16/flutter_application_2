import 'package:flutter/material.dart';

class LakeScreen extends StatelessWidget {
  const LakeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset("assets/1.jpeg", fit: BoxFit.cover, height: 200),
            Container(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Oeschinen Lake Campground",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Kandersteg, Switzerland",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  const Icon(Icons.star, color: Colors.red),
                  const Text("41"),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Column(children: [Icon(Icons.call, color: Colors.purple), Text("CALL")]),
                  Column(children: [Icon(Icons.near_me, color: Colors.purple), Text("ROUTE")]),
                  Column(children: [Icon(Icons.share, color: Colors.purple), Text("SHARE")]),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              child: const Text(
                "Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. "
                "Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. "
                "A gondola ride from Kandersteg, followed by a half-hour walk through pastures "
                "and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. "
                "Activities enjoyed here include rowing, and riding the summer toboggan run.",
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
