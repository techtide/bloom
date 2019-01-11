import 'package:flutter/material.dart';
import 'package:bloom/config.dart' as config;

class PlaylistModule extends StatefulWidget {
  @override
  PlaylistModuleState createState() {
    return new PlaylistModuleState();
  }
}

class PlaylistModuleState extends State<PlaylistModule> {
  @override
  Widget build(BuildContext context) {
    return new Expanded(
      child: new ListView.builder(
        itemCount: config.playlist.length,
        itemBuilder: (BuildContext c, int index) {
          return new ListTile(
            title: new Text(config.playlist[index].title),
            leading: new Container(
              /*
              *** ALBUM ART IMAGE ***
              width: 50,
              height: 50,
              
              child: Image.network(
                config.playlist[index].imageURL,
                fit: BoxFit.fill
              ),
              */

              child: Icon(Icons.delete_sweep),
            ),
          );
        },
        padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
      ),
    );
  }
}