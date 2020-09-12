import 'package:Myshop/models/products.dart';
import 'package:Myshop/widgets/product_card.dart';
import 'package:flutter/material.dart';

class ProductsTab extends StatefulWidget {
  final List<Product> products;
  ProductsTab({@required this.products});

  @override
  _ProductsTabState createState() => _ProductsTabState();
}

class _ProductsTabState extends State<ProductsTab> {
  Color _bgColor;

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
          _setBgColor(widget.products[index].nutrition.calories);

          return ProductCard(
            product: widget.products,
            bgColor: _bgColor,
            index: index,
          );
        },
        itemCount: widget.products.length,
      ),
    );
  }
}
