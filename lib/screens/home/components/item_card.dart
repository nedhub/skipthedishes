import 'package:flutter/material.dart';
import 'package:foodapp/constants.dart';

class ItemCard extends StatelessWidget {
  final String title, shopName, svgSrc;
  final Function press;
  const ItemCard({
    Key? key,
    required this.title,
    required this.shopName,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 20, right: 15, top: 20, bottom: 20),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 4),
              blurRadius: 20,
              color: Color(0xFFB0CCE1).withOpacity(0.32),
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: 15),
                    height: 160,
                    width: 160,
                    padding: EdgeInsets.all(25),
                    decoration: BoxDecoration(
                        color: PrimaryColor.withOpacity(0.13),
                        // shape: BoxShape.circle,
                        image: new DecorationImage(
                          image: new AssetImage(svgSrc),
                          fit: BoxFit.fill,
                        )),
                    // child: SvgPicture.asset("assets/icons/burger_beer.svg"),
                    // child: AssetImage("assets/icons/iu.jpeg");
                  ),
                  Text(title),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    shopName,
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
