import 'package:flutter/cupertino.dart';

SliverGridDelegateWithMaxCrossAxisExtent coustomMethod() {
  return SliverGridDelegateWithMaxCrossAxisExtent(
      maxCrossAxisExtent: 300,
      childAspectRatio: 8 / 8,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10);
}

int countIngredients(List ingredients) {
  return ingredients.length;
}
