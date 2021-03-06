import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CoustomGridTile extends StatelessWidget {
  final String? imageUrl;
  final String? title;
  final int? totalIngredients;

  const CoustomGridTile(
      {Key? key, this.imageUrl, this.title, this.totalIngredients})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset("$imageUrl"),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              "$title",
              maxLines: 2,
              style: TextStyle(color: Colors.green, fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.watch,
                      color: Colors.red,
                    ),
                    Text("30 min")
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.food_bank,
                      color: Colors.red,
                    ),
                    Text("$totalIngredients ingredients")
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
