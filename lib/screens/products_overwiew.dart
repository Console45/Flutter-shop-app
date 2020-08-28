import 'package:flutter/material.dart';

class ProductsOverwiew extends StatefulWidget {
  @override
  _ProductsOverwiewState createState() => _ProductsOverwiewState();
}

class _ProductsOverwiewState extends State<ProductsOverwiew> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.08,
        left: MediaQuery.of(context).size.width * 0.08,
        right: MediaQuery.of(context).size.width * 0.08,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Discovery',
                style: Theme.of(context).textTheme.headline1,
              ),
              CircleAvatar(
                backgroundColor: Theme.of(context).accentColor,
              )
            ],
          ),
          SizedBox(
            height: 40,
          ),
          TextField(
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(17),
              filled: true,
              hintText: 'Search Plants',
              hintStyle: TextStyle(color: Color(0xffCACACA), fontSize: 14),
              prefixIcon: Icon(Icons.search),
              fillColor: Theme.of(context).primaryColor,
              border: UnderlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          )
        ],
      ),
    );
  }
}
