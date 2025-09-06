import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/container/tutorial_container.dart';
import 'package:flutter_application_2/latihan/detail_page.dart';
import 'package:flutter_application_2/latihan/lake_screen.dart';
import 'package:flutter_application_2/latihan/pavlova_screen.dart';
import 'package:flutter_application_2/row_and_column/tutorial_column.dart';
import 'package:flutter_application_2/row_and_column/tutorial_row.dart';
import 'package:flutter_application_2/scaffold/tutorial_scaffold.dart';

class MyHomePage extends StatefulWidget {
  final String nama;

  const MyHomePage({super.key, required this.nama});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.nama),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: () {
              Navigator.push(context, CupertinoPageRoute(builder: (context) => TutorialScaffold()),
              );
            }, child: const Text("Scaffold")
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: () {
              Navigator.push(context, CupertinoPageRoute(builder: (context) => TutorialRow()),
              );
            }, child: const Text("Row")
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: () {
              Navigator.push(context, CupertinoPageRoute(builder: (context) => TutorialColumn()),
              );
            }, child: const Text("Column")
            ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: () {
              Navigator.push(context, CupertinoPageRoute(builder: (context) => TutorialContainer()),
              );
            }, child: const Text("Container")
            ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: () {
              Navigator.push(context, CupertinoPageRoute(builder: (context) => DetailPage()),
              );
            }, child: const Text("Farm Lembang")
            ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: () {
              Navigator.push(context, CupertinoPageRoute(builder: (context) => LakeScreen()),
              );
            }, child: const Text("Lake Screen")
            ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: () {
              Navigator.push(context, CupertinoPageRoute(builder: (context) => PavlovaScreen()),
              );
            }, child: const Text("Pavlova Screen")
            ),
          ],
        ),
      ),
    );
  }                                  
}