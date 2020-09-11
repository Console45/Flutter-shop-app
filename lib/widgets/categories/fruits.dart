import 'package:Myshop/loaded_products.dart';
import 'package:Myshop/models/products.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: SvgPicture.network(
                    _fruits[index].imageUrl,
                    width: 80,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  _fruits[index].title,
                  textAlign: TextAlign.left,
                  style: Theme.of(context).textTheme.headline2,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '1 lb',
                  style: TextStyle(
                      fontSize: 13,
                      color: Color(0xffBC9492),
                      fontWeight: FontWeight.w500),
                ),
                Row(
                  children: [
                    Text(
                      '\$ ${_fruits[index].price}',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    GestureDetector(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: SvgPicture.asset(
                          'assets/icons/bag.svg',
                          color: Theme.of(context).accentColor,
                        ),
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                )
              ],
            ),
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
