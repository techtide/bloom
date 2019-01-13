import 'package:flutter/material.dart';
import 'package:bloom/models/music.dart';
import 'package:bloom/config.dart' as config;
// import 'package:bloom/pages/playlist_module.dart';

class PlayerScreen extends StatefulWidget {
  @override
  PlayerScreenState createState() {
    return new PlayerScreenState();
  }
}

class PlayerScreenState extends State<PlayerScreen> {
  Future play() async {
    await config.player.play(currentSelectedTrack.url);
    
    setState(() {
      config.playerState = config.PlayerState.playing;
    });
  }

  Future<int> pause() async {
    final result = await config.player.pause();

    if (result == 1) {
      setState(() {
        config.playerState = config.PlayerState.paused;
      });
    }

    return result;
  }

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Container(
          width: double.infinity,
          height: 40.0,
        ),
        // Seek bar
        new Expanded(
          child: new Image.network(
            currentSelectedTrack.imageURL,
            fit: BoxFit.fitWidth,
          ),
          // child: new PlaylistModule(),
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
                      icon: config.playerState==config.PlayerState.playing?new Icon(Icons.pause_circle_filled):new Icon(Icons.play_circle_filled),
                      disabledColor: Colors.white,
                      color: Colors.white,
                      onPressed: () => config.playerState==config.PlayerState.playing?pause():play(),
                      iconSize: 80,
                    ),
                  ),
                // try deletes
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