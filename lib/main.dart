import 'package:flutter/material.dart';
import 'package:foodapp/constants.dart';
import 'package:foodapp/screens/home/home-screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Skip The Dishes',
      theme: ThemeData(
          primaryColor: PrimaryColor,
          // scaffoldBackgroundColor: Colors.orange[100],
          textTheme: TextTheme(
            bodyText1: TextStyle(color: SecondaryColor),
            bodyText2: TextStyle(color: SecondaryColor),
          )),
      home: HomeScreen(),
    );
  }
}
