import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Categoty extends StatelessWidget {
  Categoty(this.Nav, this.image, this.text);
  Function()? Nav;
  String? text;
  String? image;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: Nav,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.blue.shade100,
          ),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: Colors.grey.shade100,
          elevation: 10,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Image(
                  image: AssetImage(image!),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Expanded(
                  flex: 1,
                  child: Text(text!,
                      style: TextStyle(
                          color: Colors.blueGrey[800], fontSize: 18))),
            ],
          ),
        ),
      ),
    );
  }
}

Widget myPhraseWidget(
        {@required String? sound,
        @required String? enPhrase,
        @required String? jpPhrase}) =>
    Container(
      width: double.infinity,
      // height: 80,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.blue.shade100,
          width: 1,
        ),
        borderRadius: BorderRadius.all(Radius.circular(5)),
        color: Colors.blueGrey.shade700,
      ),
      child: Column(children: [
        SizedBox(
          height: 15,
        ),
        Text(
          enPhrase!,
          style: TextStyle(fontSize: 18, color: Colors.blueGrey.shade100),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: IconButton(
            splashColor: Colors.black,
            highlightColor: Colors.teal,
            tooltip: 'play',
            color: Colors.white,
            iconSize: 40,
            icon: Icon(
              Icons.volume_up_outlined,
            ),
            onPressed: () {
              AudioCache player = AudioCache(prefix: 'assets/sounds/phrases/');
              player.play(sound!);
            },
          ),
        ),
        Text(
          jpPhrase!,
          style: TextStyle(
            fontSize: 22,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 15,
        ),
      ]),
    );
