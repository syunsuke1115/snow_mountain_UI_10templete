import 'package:flutter/material.dart';
import 'package:snow_mountain/pages/detail_page.dart';
import 'package:snow_mountain/pages/navpages/main_page.dart';
import 'package:snow_mountain/pages/welcome_page.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "snow_mountain",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        canvasColor: Colors.white
      ),
      home: WelcomePage(),
    );
  }
}
