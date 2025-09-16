import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/latihan/tourism_place.dart';

class DetailPage extends StatelessWidget {
  final TourismPlace place;
  const DetailPage({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child : SingleChildScrollView(
        child: Column(
        children: [
          Image.asset(place.imageAsset),
          Container(
            padding: const EdgeInsets.all(10),
            child: Text(place.name, style: TextStyle(fontSize: 30), textAlign: TextAlign.center,),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [Icon(Icons.date_range), Text(place.openDays)],
                ),
            
                Column(children: [Icon(Icons.watch), Text(place.openTime)]
                ),
            
                Column(children: [Icon(Icons.monetization_on), Text(place.ticketPrice)],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 50),
            child: Text(
              place.description, 
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
              children: place.imageUrls.map((url){
                return Padding(
                  padding: const EdgeInsets.all(4),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.network(url),
                  ),
                  );
              }).toList(),
            ),
            ),
          )
        ],
        )
      )),
    );
  }
}