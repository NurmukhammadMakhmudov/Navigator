import 'package:flutter/material.dart';
import 'recipe.dart';

class RecipePage extends StatelessWidget {
  var index;
  RecipePage({this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Recipe.recipes[index].lable),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              constraints: BoxConstraints.expand(width: 350, height: 400),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(Recipe.recipes[index].imageUrl),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.all(const Radius.circular(30.0)),
              ),
            ),
            const Text.rich(TextSpan(children: [
              TextSpan(
                  text: 'Lorem Ipsum ',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w600,
                  )),
              TextSpan(
                text:
                    "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
              )
            ])),
            TextField(
              obscureText: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Leave Comment",
                suffixIcon: IconButton(
                  icon: Icon(Icons.send),
                  color: Colors.blue,
                  onPressed: (){
                    Navigator.pop(context);
                  },

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
