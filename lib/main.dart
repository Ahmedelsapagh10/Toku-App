import 'package:flutter/material.dart';
import 'package:toku/homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/B8.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: MaterialApp(
        home: homeScreen(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.transparent,
        ),
        themeMode: ThemeMode.light,
      ),
    );
  }
}
