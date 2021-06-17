import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodapp/constants.dart';

class homeAppBar extends StatelessWidget {
  const homeAppBar(
    BuildContext context, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            icon: SvgPicture.asset("assets/icons/menu.svg"), onPressed: () {}),
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
              icon: SvgPicture.asset("assets/icons/notification.svg"),
              onPressed: () {})
        ]);
  }
}
