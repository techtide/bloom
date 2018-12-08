import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:bloom/models/music.dart';

class PlayerScreen extends StatefulWidget {
  @override
  PlayerScreenState createState() {
    return new PlayerScreenState();
  }
}

enum PlayerState { stopped, playing, paused }

class PlayerScreenState extends State<PlayerScreen> {
  AudioPlayer player = new AudioPlayer();
  PlayerState playerState = PlayerState.stopped;

  Future play() async {
    await player.play(currentSelectedTrack.url);
    player.positionHandler = (pos) => print("${pos.inMilliseconds}");
    setState(() {
      playerState = PlayerState.playing;
    });
  }

  Future<int> pause() async {
    final result = await player.pause();
    if (result == 1) setState(() => playerState = PlayerState.paused);
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        // Seek bar
        new Expanded(
          child: new Container()
        ),
        // Visualiser
        new Container(
          width: double.infinity,
          height: 125.0,
        ),
        // Song title, artist controls
        new Container(
          color: Colors.pink,
          child: new Padding(
            padding: EdgeInsets.only(top: 40.0, bottom: 50.0),
            child: Column(
            children: <Widget>[
              new RichText(
                textAlign: TextAlign.center,
                text: new TextSpan(
                  text: '',
                  children: [
                    new TextSpan(
                      text: '${currentSelectedTrack.title + "\n"}',
                      style: new TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 4.0,
                        height: 1.5,
                      ),
                    ),
                    new TextSpan(
                      text: '${currentSelectedTrack.author}',
                      style: new TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 4.0,
                        height: 1.5,
                      ),
                    ),
                  ]
                )
              ),
              new Row(
                children: <Widget>[
                  new Expanded(
                    child: new Container(),
                  ),

                  new Container(
                    child: new IconButton(
                      icon: new Icon(Icons.skip_previous),
                      color: Colors.white,
                      disabledColor: Colors.white,
                      iconSize: 80,
                    ),
                  ),

                  new Expanded(
                    child: new Container(),
                  ),

                  new Container(
                    child: new IconButton(
                      icon: playerState ==  PlayerState.playing?new Icon(Icons.pause_circle_filled):new Icon(Icons.play_circle_filled),
                      disabledColor: Colors.white,
                      color: Colors.white,
                      onPressed: () => playerState == PlayerState.stopped || playerState == PlayerState.paused ? play() : pause(),
                      iconSize: 80,
                    ),
                  ),

                  new Expanded(
                    child: new Container(
                        
                    ),
                  ),

                  new Container(
                    child: new IconButton(
                      icon: new Icon(Icons.skip_next),
                      disabledColor: Colors.white,
                      color: Colors.white,
                      iconSize: 80,
                    ),
                  ),

                  new Expanded(
                    child: new Container(
                    ),
                  ),
                ],
              )
            ],
            )
          )
        )
      ],
    );
  }

}