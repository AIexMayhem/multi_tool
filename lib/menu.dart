import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Куда путь держишь?"),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/magic_ball');
                  },
                  child: Text("Шар")),
              FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/music');
                  },
                  child: Text("Музыка")),
              FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/history');
                  },
                  child: Text("История")),
              FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/weather');
                  },
                  child: Text("Погода"))
            ],
          ),
        ),
      ),
    );
  }
}
