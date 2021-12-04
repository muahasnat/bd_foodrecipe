import 'package:bd_foodrecipe/data.dart';
import 'package:bd_foodrecipe/global/functions.dart';
import 'package:bd_foodrecipe/widget/coustom_grid_tile.dart';
import 'package:flutter/material.dart';

class Bread extends StatelessWidget {
  final List bread = bdfood["bread"];

  // int countIngredients(List ingredients) {
  //   return ingredients.length;
  // }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: coustomMethod(),
        itemCount: bread.length,
        padding: EdgeInsets.all(15),
        itemBuilder: (BuildContext context, int index) {
          return CoustomGridTile(
            imageUrl: bread[index]["image"],
            title: bread[index]["title"],
            totalIngredients: countIngredients(bread[index]["ingredients"]),
          );
        });
  }
}
