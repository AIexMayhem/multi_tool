import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:magic_ball/magic_ball.dart';
import 'package:magic_ball/music.dart';
import 'package:magic_ball/my_story.dart';
import 'package:magic_ball/story.dart';
import 'package:magic_ball/story_logic.dart';

import 'menu.dart';

void main() {
  runApp(MainMenu());
}

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Мои программы',
      initialRoute: '/menu',
      routes: {
        '/menu': (context) => MyMenu(),
        '/magic_ball': (context) => MagicBall(),
        '/music': (context) => MusicPlayer(),
        '/history': (context) => MyStory(),
        '/weather': (context) => Weather(),
      },
    );
  }
}
