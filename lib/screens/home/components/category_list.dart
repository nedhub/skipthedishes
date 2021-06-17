import 'package:flutter/material.dart';
import 'package:foodapp/screens/home/components/category_item.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CategoryItem(title: "Featured", isActive: true, press: () {}),
          CategoryItem(title: "Chinese", press: () {}),
          CategoryItem(title: "Caribbean", press: () {}),
          CategoryItem(title: "Hot & Spicy", press: () {}),
        ],
      ),
    );
  }
}
