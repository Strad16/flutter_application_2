import 'package:flutter/material.dart';
import 'tourism_place.dart';

class DetailPage1 extends StatelessWidget {
  final TourismPlace place;

  const DetailPage1({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(place.name)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(place.imageAsset),
            const SizedBox(height: 8),
            Text(place.location,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(place.description),
            ),
          ],
        ),
      ),
    );
  }
}
