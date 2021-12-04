import 'package:bd_foodrecipe/data.dart';
import 'package:bd_foodrecipe/global/functions.dart';
import 'package:bd_foodrecipe/widget/coustom_grid_tile.dart';
import 'package:flutter/material.dart';

class FastFood extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final List fast_food = bdfood["fast_food"];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: coustomMethod(),
        itemCount: fast_food.length,
        padding: EdgeInsets.all(15),
        itemBuilder: (BuildContext context, int index) {
          return CoustomGridTile(
            imageUrl: fast_food[index]["image"],
            title: fast_food[index]["title"],
            totalIngredients: countIngredients(fast_food[index]["ingredients"]),
          );
        });
  }
}
