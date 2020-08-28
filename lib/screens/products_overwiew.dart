import 'package:flutter/material.dart';

class ProductsOverwiew extends StatefulWidget {
  @override
  _ProductsOverwiewState createState() => _ProductsOverwiewState();
}

class _ProductsOverwiewState extends State<ProductsOverwiew>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

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
          ),
          SizedBox(
            height: 20,
          ),
          _productsTab(_tabController)
        ],
      ),
    );
  }
}

Widget _productsTab(TabController tabController) {
  return TabBar(
    tabs: const <Widget>[
      Tab(
        text: 'Recommend',
      ),
      Tab(
        text: 'Top',
      ),
      Tab(
        text: 'Indoor',
      ),
      Tab(
        text: 'Outdoor',
      ),
    ],
    controller: tabController,
    isScrollable: true,
    indicator: UnderlineTabIndicator(borderSide: BorderSide.none),
    labelColor: Color(0xff515151),
    labelStyle: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 15,
    ),
    unselectedLabelStyle: TextStyle(
      fontWeight: FontWeight.w700,
    ),
    unselectedLabelColor: Color(0xffB9B9B9),
  );
}
