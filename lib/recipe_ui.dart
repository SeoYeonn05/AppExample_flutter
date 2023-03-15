

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecipeUi extends StatelessWidget {
  const RecipeUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily:"PatuaOne"),
      home: recipePage()
    );
  }

  Widget recipePage(){
    return Container(
      child: Column(
        children: [
          recipeTitle(),
          recipeMenu()
        ],
      )
    );
  }

  Widget recipeTitle(){
    return const Padding(
      padding: EdgeInsets.only(top: 20),
      child: Text(
        "Recipes",
        style: TextStyle(fontSize: 30)
      ),
    );
  }

  Widget recipeMenu() {
    return Row(
      children: [

      ],
    );
  }

  Widget recipeItem(){
    return Container(
      child: Column(
        children: [

        ],
      )
    );
  }


}




