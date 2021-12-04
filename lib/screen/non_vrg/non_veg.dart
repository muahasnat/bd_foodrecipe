import 'package:bd_foodrecipe/data.dart';
import 'package:bd_foodrecipe/global/functions.dart';
import 'package:bd_foodrecipe/widget/coustom_grid_tile.dart';
import 'package:flutter/material.dart';

class NonVeg extends StatelessWidget {
  final List non_veg = bdfood["non_veg"];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: coustomMethod(),
        itemCount: non_veg.length,
        padding: EdgeInsets.all(15),
        itemBuilder: (BuildContext context, int index) {
          return CoustomGridTile(
            imageUrl: non_veg[index]["image"],
            title: non_veg[index]["title"],
            totalIngredients: countIngredients(non_veg[index]["ingredients"]),
          );
        });
  }
}
