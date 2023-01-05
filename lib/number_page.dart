// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:toku/Component/items.dart';
import 'models/numberModel.dart';

class numbersScreen extends StatefulWidget {
  @override
  State<numbersScreen> createState() => _numbersScreenState();
}

var scrollController = ScrollController();
final List<Number> numbers = [
  Number(
      image: 'assets/images/numbers/number_one.png',
      enName: 'one',
      ypName: 'Ichi',
      sound: 'number_one_sound.mp3'),
  Number(
      image: 'assets/images/numbers/number_two.png',
      enName: 'two',
      ypName: 'Ni',
      sound: 'number_two_sound.mp3'),
  Number(
      image: 'assets/images/numbers/number_three.png',
      enName: 'three',
      ypName: 'San',
      sound: 'number_three_sound.mp3'),
  Number(
      image: 'assets/images/numbers/number_four.png',
      enName: 'four',
      ypName: 'Shi',
      sound: 'number_four_sound.mp3'),
  Number(
      image: 'assets/images/numbers/number_five.png',
      enName: 'five',
      ypName: 'go',
      sound: 'number_five_sound.mp3'),
  Number(
      image: 'assets/images/numbers/number_six.png',
      enName: 'six',
      ypName: 'Roku',
      sound: 'number_six_sound.mp3'),
  Number(
      image: 'assets/images/numbers/number_seven.png',
      enName: 'seven',
      ypName: 'Seubn',
      sound: 'number_seven_sound.mp3'),
  Number(
      image: 'assets/images/numbers/number_eight.png',
      enName: 'eight',
      ypName: 'hachi',
      sound: 'number_eight_sound.mp3'),
  Number(
      image: 'assets/images/numbers/number_nine.png',
      enName: 'nine',
      ypName: 'Ktuu',
      sound: 'number_nine_sound.mp3'),
  Number(
      image: 'assets/images/numbers/number_ten.png',
      enName: 'ten',
      ypName: 'Juu',
      sound: 'number_ten_sound.mp3'),
];

class _numbersScreenState extends State<numbersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey.shade100,
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                title: const Text('Numbers'),
                centerTitle: true,
                expandedHeight: 200.0,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    'assets/B3.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                floating: true,
                snap: true,
                pinned: true,
                backgroundColor: Colors.blue.shade100,
                forceElevated: innerBoxIsScrolled,
              ),
            ];
          },
          body: ListView.builder(
            itemCount: numbers.length,
            shrinkWrap: true,
            itemBuilder: (context, i) {
              return items(
                numbers: numbers[i],
                color: Colors.indigo.shade200,
                path: 'assets/sounds/numbers/',
              );
            },
          ),
        ));
  }
}
