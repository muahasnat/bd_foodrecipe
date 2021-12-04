import 'package:bd_foodrecipe/data.dart';
import 'package:bd_foodrecipe/global/functions.dart';
import 'package:bd_foodrecipe/widget/coustom_grid_tile.dart';
import 'package:flutter/material.dart';

class Rice extends StatelessWidget {
  final List rice = bdfood["rice"];

  // int countIngredients(List ingredients) {
  //   return ingredients.length;
  // }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: coustomMethod(),
        itemCount: rice.length,
        padding: EdgeInsets.all(15),
        itemBuilder: (BuildContext context, int index) {
          return CoustomGridTile(
            imageUrl: rice[index]["image"],
            title: rice[index]["title"],
            totalIngredients: countIngredients(rice[index]["ingredients"]),
          );
        });
  }
}
