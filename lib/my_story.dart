import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:magic_ball/story_logic.dart';

class MyStory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyStatefulApp();
  }
}

class MyStatefulApp extends StatefulWidget {
  @override
  _MyStatefulAppState createState() => _MyStatefulAppState();
}

StoryLogic storyLogic = StoryLogic();

class _MyStatefulAppState extends State<MyStatefulApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                flex: 3,
                child: Center(child: Text(storyLogic.getStoryTitle()))),
            Expanded(
              flex: 1,
              child: FlatButton(
                  color: Colors.lightBlueAccent,
                  onPressed: () {
                    setState(() {
                      storyLogic.nextStory(1);
                    });
                  },
                  child: Text(storyLogic.getStoryVariantA())),
            ),
            Expanded(
              flex: 1,
              child: FlatButton(
                  color: Colors.yellowAccent,
                  onPressed: () {
                    if (storyLogic.getStoryVariantB() == "Вернуться\n в меню" ||
                        storyLogic.getStoryVariantA() == "Вернуться\n в меню") {
                      Navigator.pushNamed(context, '/menu');
                      storyLogic.storyNumber = 0;
                    } else {
                      setState(() {
                        storyLogic.nextStory(2);
                      });
                    }
                  },
                  child: Text(storyLogic.getStoryVariantB())),
            )
          ],
        ),
      ),
    ));
  }
}
