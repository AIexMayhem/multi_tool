import 'dart:async';
import 'dart:math';
import 'package:shake/shake.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MagicBall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyStatefulApp();
  }
}

class MyStatefulApp extends StatefulWidget {
  @override
  _MyStatefulAppState createState() => _MyStatefulAppState();
}

class _MyStatefulAppState extends State<MyStatefulApp> {
  List<String> answers = [
    "Да",
    "Очень вероятно",
    "Без сомнений",
    "Должно быть так",
    "Абсолютно точно",
    "Духи говорят да",
    "Нет",
    "Звезды говорят нет",
    "Ответ нет",
    "Не надейся",
    "Вряд ли",
    "Мало шансов",
  ];

  String answerOfTheBall = "";
  bool visible = false;

  getRandomAnswer() {
    setState(() {
      visible = false;
    });

    final player = AudioCache();
    player.play('magic_up.mp3');

    Timer(Duration(milliseconds: 2000), () {
      setState(() {
        answerOfTheBall = answers[Random().nextInt(answers.length)];
        visible = true;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    ShakeDetector detector = ShakeDetector.autoStart(
      onPhoneShake: () {
        getRandomAnswer();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: GestureDetector(
            onTap: () {
              getRandomAnswer();
            },
            child: Stack(
              children: [
                Center(
                  child: Image(
                    image: AssetImage("assets/magic_ball.png"),
                  ),
                ),
                Transform.translate(
                  offset: Offset(0, -25),
                  child: Center(
                    child: Container(
                        width: 150.0,
                        child: AnimatedOpacity(
                            opacity: visible ? 1.0 : 0.0,
                            duration: Duration(milliseconds: 2000),
                            child: Text(
                              answerOfTheBall,
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.cyan, fontSize: 9.0),
                            ))),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
