import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/numberModel.dart';

class items extends StatelessWidget {
  const items(
      {required this.numbers, required this.color, @required this.path});
  final Number numbers;
  final Color? color;
  final String? path;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.brown.shade100,
          width: 1,
        ),
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: color,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            color: Colors.white70,
            child: Image(
              image: AssetImage(numbers.image),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  numbers.ypName,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Text(
                  numbers.enName,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: IconButton(
              splashColor: Colors.black,
              highlightColor: Colors.teal,
              tooltip: 'Play',
              color: Colors.white,
              iconSize: 32,
              icon: Icon(
                Icons.volume_up_outlined,
              ),
              onPressed: () {
                AudioCache player = AudioCache(prefix: '${path}');
                player.play(numbers.sound);
              },
            ),
          )
        ],
      ),
    );
  }
}
