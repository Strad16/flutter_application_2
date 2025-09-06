import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          Image.asset("1.jpeg"),
          Container(
            padding: const EdgeInsets.all(10),
            child: Text("Farm House Lembang", style: TextStyle(fontSize: 30), textAlign: TextAlign.center,),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [Icon(Icons.date_range), Text("open Everyday")],
                ),
            
                Column(children: [Icon(Icons.watch), Text("09:00 - 20:00")]
                ),
            
                Column(children: [Icon(Icons.monetization_on), Text("Rp. 25.000")],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 50),
            child: Text(
              "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa", 
              textAlign: TextAlign.center,
            ),
          ),
        ],
      )),
    );
  }
}