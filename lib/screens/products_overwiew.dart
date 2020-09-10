import 'package:Myshop/widgets/categories/fruits.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    child: SvgPicture.asset(
                      'assets/icons/drawToggle.svg',
                      color: Theme.of(context).accentColor,
                      width: 28,
                    ),
                  ),
                  Icon(
                    Icons.shopping_basket,
                    color: Theme.of(context).accentColor,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello Nana,',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'What do you like to find?',
                    style: Theme.of(context).textTheme.bodyText1,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(15),
                    child: SvgPicture.asset(
                      'assets/icons/search.svg',
                      color: Color(0xffC9B8B8),
                    ),
                  ),
                  contentPadding: const EdgeInsets.all(18),
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Color(0xffC9B8B8), fontSize: 18),
                  filled: true,
                  fillColor: Color(0xffF8F8F8),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            _productsTab(_tabController),
            Container(
              height: MediaQuery.of(context).size.height * 0.54,
              child: _productsTabView(_tabController),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _productsTab(TabController tabController) {
  return TabBar(
    tabs: const <Widget>[
      Tab(
        text: 'Fruits',
      ),
      Tab(
        text: 'Vegetables',
      ),
      Tab(
        text: 'Breakfast',
      ),
      Tab(
        text: 'Beverages',
      ),
    ],
    controller: tabController,
    isScrollable: true,
    indicator: UnderlineTabIndicator(
      borderSide: BorderSide(
        width: 3,
        color: Color(0xff462D1A),
      ),
    ),
    labelPadding: EdgeInsets.symmetric(horizontal: 25),
    indicatorSize: TabBarIndicatorSize.label,
    labelColor: Color(0xff462D1A),
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

Widget _productsTabView(TabController tabController) {
  return TabBarView(
    children: [
      Fruits(),
      Text('Vegetables'),
      Text('Breakfast'),
      Text('Beverages'),
    ],
    controller: tabController,
  );
}
