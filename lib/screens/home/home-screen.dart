import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodapp/constants.dart';
import 'package:foodapp/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.orange[400],
          elevation: 0,
          leading: IconButton(
              // icon: SvgPicture.asset("assets/icons/menu.svg"),
              // icon: SvgPicture.asset("assets/icons/menu.png"),
              icon: Icon(Icons.menu),
              onPressed: () {}),
          title: RichText(
            text: TextSpan(
              style: Theme.of(context)
                  .textTheme
                  .title!
                  .copyWith(fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                    text: "Skip the ", style: TextStyle(color: SecondaryColor)),
                TextSpan(
                  text: "Dishes",
                  style: TextStyle(color: PrimaryColor),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            IconButton(
                // icon: SvgPicture.asset("assets/icons/notification.svg"),
                icon: Icon(Icons.notifications_none),
                onPressed: () {})
          ]),
      body: Body(),
      bottomNavigationBar: Container(
          padding: EdgeInsets.symmetric(horizontal: 35),
          height: 75,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, -7),
                blurRadius: 33,
                color: Color(0xFF6DAED9).withOpacity(0.11),
              )
            ],
          ),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset("assets/icons/home.svg")),
                IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset("assets/icons/Following.svg")),
                IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset("assets/icons/Glyph.svg")),
                IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset("assets/icons/person.svg")),
              ])),
    );
  }
}
