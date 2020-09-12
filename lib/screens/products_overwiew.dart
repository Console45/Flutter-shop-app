import 'package:Myshop/loaded_products.dart';
import 'package:Myshop/models/products.dart';
import 'package:Myshop/widgets/productsTab.dart';
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
    loadedProducts.forEach((product) {
      if (product.category == Category.Fruits) _fruits.add(product);
    });
    loadedProducts.forEach((product) {
      if (product.category == Category.Vegetables) _vegetables.add(product);
    });
    loadedProducts.forEach((product) {
      if (product.category == Category.Breakfast) _breakfast.add(product);
    });
    loadedProducts.forEach((product) {
      if (product.category == Category.Beverages) _beverages.add(product);
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  List<Product> _fruits = [];
  List<Product> _vegetables = [];
  List<Product> _breakfast = [];
  List<Product> _beverages = [];

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
                  SvgPicture.asset(
                    'assets/icons/bag.svg',
                    width: 24,
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
              child: _productsTabView(
                _tabController,
                _fruits,
                _vegetables,
                _breakfast,
                _beverages,
              ),
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

Widget _productsTabView(
  TabController tabController,
  List<Product> fruits,
  List<Product> vegetables,
  List<Product> breakfast,
  List<Product> beverages,
) {
  return TabBarView(
    children: [
      ProductsTab(
        products: fruits,
      ),
      ProductsTab(
        products: vegetables,
      ),
      ProductsTab(
        products: breakfast,
      ),
      ProductsTab(
        products: beverages,
      ),
    ],
    controller: tabController,
  );
}
