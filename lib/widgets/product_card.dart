import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:Myshop/models/products.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key key,
    @required this.product,
    @required this.bgColor,
    @required this.index,
  }) : super(key: key);

  final List<Product> product;
  final Color bgColor;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: SvgPicture.network(
              product[index].imageUrl,
              width: 80,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            product[index].title,
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
                '\$ ${product[index].price}',
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
        color: bgColor,
      ),
    );
  }
}
