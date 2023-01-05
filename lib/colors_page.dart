// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:toku/Component/items.dart';
import 'package:toku/models/numberModel.dart';

class colorpage extends StatefulWidget {
  const colorpage({Key? key}) : super(key: key);

  @override
  State<colorpage> createState() => _colorpageState();
}

final List<Number> color = [
  Number(
      image: 'assets/images/colors/color_black.png',
      enName: 'Black',
      ypName: 'Burakku',
      sound: 'black.wav'),
  Number(
      image: 'assets/images/colors/color_brown.png',
      enName: 'Brown',
      ypName: 'Chiro',
      sound: 'brown.wav'),
  Number(
      image: 'assets/images/colors/color_dusty_yellow.png',
      enName: 'dusty yellow',
      ypName: 'Hokori ppoi kiiro',
      sound: 'dusty yellow.wav'),
  Number(
      image: 'assets/images/colors/color_gray.png',
      enName: 'gray',
      ypName: 'Guree',
      sound: 'gray.wav'),
  Number(
      image: 'assets/images/colors/color_green.png',
      enName: 'green',
      ypName: 'Midori',
      sound: 'green.wav'),
  Number(
      image: 'assets/images/colors/color_red.png',
      enName: 'red',
      ypName: 'Aki',
      sound: 'red.wav'),
  Number(
      image: 'assets/images/colors/color_white.png',
      enName: 'white',
      ypName: 'Shiroi',
      sound: 'white.wav'),
  Number(
      image: 'assets/images/colors/yellow.png',
      enName: 'yellow',
      ypName: 'Kiiro',
      sound: 'yellow.wav'),
];

class _colorpageState extends State<colorpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey.shade100,
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                title: const Text('Colors'),
                centerTitle: true,
                expandedHeight: 200.0,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    'assets/BBB1.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                floating: true,
                snap: true,
                pinned: true,
                backgroundColor: Colors.teal.shade200,
                forceElevated: innerBoxIsScrolled,
              ),
            ];
          },
          body: ListView.builder(
            itemCount: color.length,
            shrinkWrap: true,
            itemBuilder: (context, i) {
              return items(
                numbers: color[i],
                color: Colors.cyan.shade500,
                path: 'assets/sounds/colors/',
              );
            },
          ),
        ));
  }
}
