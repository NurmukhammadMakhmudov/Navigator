import 'package:flutter/material.dart';
class Recipe {
  String lable;
  String imageUrl;
  Recipe({this.lable, this.imageUrl});
  static List<Recipe> recipes=[
    Recipe(lable: 'Pasta',imageUrl: 'images/pasta.jpg'),
    Recipe(lable: 'Plov', imageUrl: 'images/plov.jpg' ),
    Recipe(lable: 'Lagman',imageUrl: 'images/lagman.webp'),
    Recipe(lable: 'Some food', imageUrl: 'images/someFood.png'),
    Recipe(lable: 'Some food 2',imageUrl: 'images/someFood2.jpg'),

  ];
}