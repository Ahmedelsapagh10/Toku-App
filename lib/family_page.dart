// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:toku/Component/items.dart';
import 'package:toku/models/numberModel.dart';

class familypage extends StatefulWidget {
  const familypage({Key? key}) : super(key: key);

  @override
  State<familypage> createState() => _familypageState();
}

final List<Number> family = [
  Number(
      image: 'assets/images/family_members/family_father.png',
      enName: 'father',
      ypName: 'Chichioya',
      sound: 'father.wav'),
  Number(
      image: 'assets/images/family_members/family_mother.png',
      enName: 'mother',
      ypName: 'Hahaoya',
      sound: 'mother.wav'),
  Number(
      image: 'assets/images/family_members/family_grandfather.png',
      enName: 'Grand Father',
      ypName: 'Ojiisan',
      sound: 'grand father.wav'),
  Number(
      image: 'assets/images/family_members/family_grandmother.png',
      enName: 'Grand mother',
      ypName: 'Sobo',
      sound: 'grand mother.wav'),
  Number(
      image: 'assets/images/family_members/family_daughter.png',
      enName: 'daughter',
      ypName: 'Musume',
      sound: 'daughter.wav'),
  Number(
      image: 'assets/images/family_members/family_older_brother.png',
      enName: 'older_brother',
      ypName: 'Niisan',
      sound: 'older bother.wav'),
  Number(
      image: 'assets/images/family_members/family_older_sister.png',
      enName: 'older_sister',
      ypName: 'Ane',
      sound: 'older sister.wav'),
  Number(
      image: 'assets/images/family_members/family_son.png',
      enName: 'Son',
      ypName: 'Musuko',
      sound: 'son.wav'),
  Number(
      image: 'assets/images/family_members/family_younger_brother.png',
      enName: 'younger_brother',
      ypName: 'otouto',
      sound: 'younger brohter.wav'),
  Number(
      image: 'assets/images/family_members/family_younger_sister.png',
      enName: 'younger_sister',
      ypName: 'Imouto',
      sound: 'younger sister.wav'),
];

class _familypageState extends State<familypage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey.shade100,
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                title: const Text('Family Members'),
                centerTitle: true,
                expandedHeight: 200.0,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    'assets/BB1.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                floating: true,
                snap: true,
                pinned: true,
                backgroundColor: Colors.indigo.shade500,
                forceElevated: innerBoxIsScrolled,
              ),
            ];
          },
          body: ListView.builder(
            itemCount: family.length,
            shrinkWrap: true,
            itemBuilder: (context, i) {
              return items(
                numbers: family[i],
                color: Colors.indigoAccent.shade200,
                path: 'assets/sounds/family_members/',
              );
            },
          ),
        ));
  }
}
