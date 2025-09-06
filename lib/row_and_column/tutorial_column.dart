import 'package:flutter/material.dart';

class TutorialColumn extends StatelessWidget {
  const TutorialColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tutuorial column")
      ),
      body: Column(
        children: [
          Text("Hello, Word", style: TextStyle(fontSize: 30)),
          Text("Bal-Bal"),
        ],
      ),
    );
  }
}