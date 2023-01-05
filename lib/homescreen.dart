import 'package:flutter/material.dart';
import 'package:toku/Component/component.dart';
import 'package:toku/colors_page.dart';
import 'package:toku/family_page.dart';
import 'package:toku/number_page.dart';
import 'package:toku/phrases_page.dart';

class homeScreen extends StatefulWidget {
  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: const Text('TOKU'),
        elevation: 10,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            height: 350,
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              addAutomaticKeepAlives: true,
              children: [
                Categoty(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => numbersScreen()));
                }, 'assets/number-blocks.png', 'Numbers'),
                Categoty(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => familypage()));
                }, 'assets/family.png', 'Family Members'),
                Categoty(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => colorpage()));
                }, 'assets/palette.png', 'Colors'),
                Categoty(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => phrasespage()));
                }, 'assets/text-box.png', 'Phrases'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
