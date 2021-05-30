import 'package:flutter/material.dart';
import 'package:flutter_second_try/RecipePage.dart';
import 'recipe.dart';

class HomePage extends StatefulWidget {
  String title;

  HomePage({this.title});
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[370],
        appBar: AppBar(title: Text(widget.title)),
        body: SafeArea(
          child: Container(
            child: ListView.builder(
                itemCount: Recipe.recipes.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return RecipePage(index: index,);
                        }),
                      );
                    },
                    child: buildRecipeCard(Recipe.recipes[index]),
                  );
                }),
          ),
        ));
  }

  Widget buildRecipeCard(Recipe recipes) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 2.5,
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Container(
            constraints: BoxConstraints.expand(width: 350, height: 400),
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(recipes.imageUrl),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.all(const Radius.circular(30.0))),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Text(recipes.lable),
          ),
        ],
      ),
    );
  }
}
