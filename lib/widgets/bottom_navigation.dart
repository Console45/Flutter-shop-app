import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNav extends StatelessWidget {
  final List<Map<String, Object>> navElements;
  final int currentIndex;
  final Function changePage;
  BottomNav({
    @required this.navElements,
    @required this.currentIndex,
    this.changePage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      padding: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: navElements.asMap().entries.map((entry) {
          int index = entry.key;
          bool active = index == currentIndex;
          Map<String, Object> navElement = entry.value;
          if (active) print(active);
          return GestureDetector(
            onTap: () => changePage(index),
            child: SvgPicture.asset(
              !active ? navElement['icon'] : navElement['active'],
              color: !active ? Color(0xffA8A7A8) : Color(0xff21B4A6),
              height: 20,
            ),
          );
        }).toList(),
      ),
    );
  }
}
