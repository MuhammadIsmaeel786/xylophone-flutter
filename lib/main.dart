import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildkey({Color color, int SoundNumber}) {
    return Expanded(
      child: Container(
        color: color,
        child: TextButton(
          onPressed: () {
            playSound(SoundNumber);
          },
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildkey(color: Colors.red, SoundNumber: 1),
              buildkey(color: Colors.pink, SoundNumber: 2),
              buildkey(color: Colors.purple, SoundNumber: 3),
              buildkey(color: Colors.deepPurple, SoundNumber: 4),
              buildkey(color: Colors.indigo, SoundNumber: 5),
              buildkey(color: Colors.blue, SoundNumber: 6),
              buildkey(color: Colors.cyan, SoundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
