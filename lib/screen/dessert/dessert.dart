import 'package:bd_foodrecipe/data.dart';
import 'package:bd_foodrecipe/global/functions.dart';
import 'package:bd_foodrecipe/widget/coustom_grid_tile.dart';
import 'package:flutter/material.dart';

class Dessert extends StatelessWidget {
  final List dessert = bdfood["dessert"];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: coustomMethod(),
        itemCount: dessert.length,
        padding: EdgeInsets.all(15),
        itemBuilder: (BuildContext context, int index) {
          return CoustomGridTile(
            imageUrl: dessert[index]["image"],
            title: dessert[index]["title"],
            totalIngredients: countIngredients(dessert[index]["ingredients"]),
          );
        });
  }
}
