import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_2/scaffold/tutorial_scaffold_with_back_button.dart';

class TutorialScaffold extends StatelessWidget {
  const TutorialScaffold({super.key});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text("Scaffold dengan landing"),
      leading: Icon(Icons.menu),
      actions: [
        IconButton(
          icon: Icon(Icons.search),
          onPressed: (){}
        )
      ],
    ),
    body: Column(
      children: [
        ElevatedButton(onPressed: () {
              Navigator.push(context, CupertinoPageRoute(builder: (context) => TutorialScaffoldWithBackButton()
              ),
              );
            }, child: const Text("Scaffold "))
      ],
    ),
    floatingActionButton: FloatingActionButton(onPressed: () {}, child: Icon(Icons.add),),
  );
  }
}