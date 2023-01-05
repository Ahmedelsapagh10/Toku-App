// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:toku/Component/component.dart';

class phrasespage extends StatefulWidget {
  @override
  State<phrasespage> createState() => _phrasespageState();
}

List<Widget> phrarseList = [
  myPhraseWidget(
      sound: 'how_are_you_feeling.wav',
      enPhrase: 'how_are_you_feeling',
      jpPhrase: 'Go kibun wa ikagadesu ka'),
  myPhraseWidget(
      sound: 'i_love_programming.wav',
      enPhrase: 'i_love_programming',
      jpPhrase: 'Watashi wa puroguramingu ga daisukidesu'),
  myPhraseWidget(
      sound: 'programming_is_easy.wav',
      enPhrase: 'programming_is_easy',
      jpPhrase: 'Puroguramingu wa kantandesu'),
  myPhraseWidget(
      sound: 'where_are_you_going.wav',
      enPhrase: 'where_are_you_going',
      jpPhrase: 'Doko ni iku no'),
  myPhraseWidget(
      sound: 'i_love_anime.wav',
      enPhrase: 'i_love_anime',
      jpPhrase: 'Watashi wa anime ga daisukidesu')
];

class _phrasespageState extends State<phrasespage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey.shade100,
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                title: const Text('Phrases'),
                centerTitle: true,
                expandedHeight: 200.0,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    'assets/B4.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                floating: true,
                snap: true,
                pinned: true,
                backgroundColor: Colors.blueGrey.shade600,
                forceElevated: innerBoxIsScrolled,
              ),
            ];
          },
          body: ListView.builder(
            itemCount: phrarseList.length,
            shrinkWrap: true,
            itemBuilder: (context, i) {
              return phrarseList[i];
            },
          ),
        ));
  }
}
