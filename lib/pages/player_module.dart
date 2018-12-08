import 'package:flutter/material.dart';

class PlayerModule extends StatefulWidget {
  @override
  PlayerModuleState createState() {
    return new PlayerModuleState();
  }
}

class PlayerModuleState extends State<PlayerModule> {
  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new IconButton(
          icon: Icon(Icons.play_circle_filled),
          iconSize: 80,
        )
      ],
    );
  }
}