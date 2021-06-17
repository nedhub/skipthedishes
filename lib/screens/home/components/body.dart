import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodapp/components/search_box.dart';
import 'package:foodapp/constants.dart';
import 'package:foodapp/screens/home/components/category_item.dart';
import 'package:foodapp/screens/home/components/category_list.dart';
import 'package:foodapp/screens/home/components/item_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,

      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: <Widget>[
            SearchBox(
              onChanged: (value) {},
            ),
            CategoryList(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  ItemCard(
                    svgSrc: "assets/icons/iu.jpeg",
                    shopName: "Kelsey's",
                    title: "Burger's",

                    press: () {},
                  ),
                  ItemCard(
                    svgSrc: "assets/icons/chickenspag.jpeg",
                    shopName: "Pasta Place",
                    title: "Chicken Spaghetti",
                    press: () {},
                  ),
                  ItemCard(
                    svgSrc: "assets/icons/breakfast.jpeg",
                    shopName: "Simply Delicious",
                    title: "Breakfast",
                    press: () {},
                  ),
                ],
              ),
            ),
            DiscountSection(),
          ]),
    );
  }
}

class DiscountSection extends StatelessWidget {
  const DiscountSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Offers & Discounts",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: TextColor, fontSize: 18),
          ),
          Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              width: double.infinity,
              height: 166,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                // shape: BoxShape.rectangle,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/images/discount.png"),
                ),
              ),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFFFF961F).withOpacity(0.7),
                      PrimaryColor.withOpacity(0.7),
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
