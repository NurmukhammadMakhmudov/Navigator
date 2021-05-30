import 'package:flutter/material.dart';
import 'HomePage.dart';

void main() {
  runApp(RecipeApp());

}

class RecipeApp  extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

  return MaterialApp(
    title: 'Recipe calculator',
    theme: ThemeData(
      primaryColor: Colors.grey[500],
      accentColor: Colors.black
    ),
    home: HomePage(title:'Recipre Calculator'),
  );



  }


}

