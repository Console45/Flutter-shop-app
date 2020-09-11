import 'package:Myshop/loaded_products.dart';
import 'package:Myshop/models/products.dart';
import 'package:flutter/material.dart';

class Fruits extends StatefulWidget {
  @override
  _FruitsState createState() => _FruitsState();
}

class _FruitsState extends State<Fruits> {
  List<Product> _fruits = [];
  Color _bgColor;

  @override
  void initState() {
    super.initState();
    loadedProducts.forEach((product) {
      if (product.category == Category.Fruits) _fruits.add(product);
    });
  }

  void _setBgColor(int calories) {
    if (calories <= 40)
      _bgColor = Color(0xffFEEEE4);
    else if (calories <= 60 && calories > 40)
      _bgColor = Color(0xffFFF9E3);
    else if (calories <= 80 && calories > 60)
      _bgColor = Color(0xffF2FBE4);
    else
      _bgColor = Color(0xffFFF0F0);
  }

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
          _setBgColor(_fruits[index].nutrition.calories);

          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: _bgColor,
            ),
          );
        },
        itemCount: _fruits.length,
      ),
    );
  }
}
