import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavorriteBoutton extends StatefulWidget {
  const FavorriteBoutton({super.key});
  

  @override
  State<FavorriteBoutton> createState() => _FavorriteBouttonState();
}

class _FavorriteBouttonState extends State<FavorriteBoutton> {

 bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      }, icon: isFavorite? 
      Icon(Icons.favorite, color: Colors.red,) 
      : Icon(Icons.favorite_border)
    );
  }
}