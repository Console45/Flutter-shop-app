import 'package:Myshop/loaded_products.dart';
import 'package:Myshop/models/products.dart';
import 'package:flutter/material.dart';

class Fruits extends StatelessWidget {
  final List<Color> bgColors = [
    Color(0xffFFF4EA),
    Color(0xffFFF8DF),
    Color(0xffFFF0F0),
    Color(0xffF2FBE4),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          childAspectRatio: 0.75,
          mainAxisSpacing: 20,
        ),
        itemBuilder: (ctx, index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: bgColors[index],
            ),
          );
        },
        itemCount: loadedProducts
            .where((product) => product.category == Category.Fruits)
            .length,
      ),
    );
  }
}
