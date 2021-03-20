import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

class MusicPlayer extends StatelessWidget {
  void playThisMusic(int numberOfMelody) {
    final player = AudioCache();
    player.play('note$numberOfMelody.wav');
  }

  Expanded createPlayingButton(
      Color colorOfButton, String textOfButton, int numberOfMelody) {
    return Expanded(
      child: FlatButton(
        color: colorOfButton,
        onPressed: () {
          playThisMusic(numberOfMelody);
        },
        child: Text(textOfButton),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'music_player',
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                createPlayingButton(Colors.blue, 'note1', 1),
                createPlayingButton(Colors.yellow, 'note2', 2),
                createPlayingButton(Colors.black, 'note6', 6),
                createPlayingButton(Colors.white, 'note3', 3),
                createPlayingButton(Colors.blue, 'note4', 4),
                createPlayingButton(Colors.red, 'note5', 5),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
