import 'package:flutter/material.dart';

class FavoritesScreen extends StatefulWidget{
  @override
  FavoritesScreenState createState() => FavoritesScreenState();

}

class FavoritesScreenState extends State<FavoritesScreen>{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
            'There are no Favorited Items yet.'
        ),
      ),
    );
  }

}