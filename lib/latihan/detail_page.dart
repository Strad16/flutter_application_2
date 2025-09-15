import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child : SingleChildScrollView(
        child: Column(
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
              "aaaaaaaaaaaaaaaaaaaaaaaaaaa....", 
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              maxLines: 3, 
            ),
          ),
          //scroll horizontal
          SizedBox(height: 150,
            child: ScrollConfiguration(behavior: ScrollConfiguration.of
            (context).copyWith(
              dragDevices: {
                PointerDeviceKind.touch,
                PointerDeviceKind.mouse,
                PointerDeviceKind.stylus,
              }
            ),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network('https://s-light.tiket.photos/t/01E25EBZS3W0FY9GTG6C42E1SE/rsfit1440960gsm/events/2025/01/06/8c3726e3-b66e-43e5-ba40-aeb1a2ac13f5-1736147153269-b486cf97eb9f0f8feb5b22faa9b20937.png'),
                ),
                ),
                Padding(padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network('https://s-light.tiket.photos/t/01E25EBZS3W0FY9GTG6C42E1SE/rsfit1440960gsm/events/2025/01/06/8c3726e3-b66e-43e5-ba40-aeb1a2ac13f5-1736147153269-b486cf97eb9f0f8feb5b22faa9b20937.png'),
                ),
                )
              ],
            ),
            ),
          )
        ],
        )
      )),

    );
  }
}