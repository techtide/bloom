import 'package:flutter/material.dart';
import 'package:bloom/models/music.dart';


class SuggestScreen extends StatefulWidget {
  @override
  SuggestScreenState createState() {
    return new SuggestScreenState();
  }
}

class SuggestScreenState extends State<SuggestScreen> {
  Tracks tracks = new Tracks();

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: ListView.builder(
        itemCount: tracks.getTracks().length,
        itemBuilder: (BuildContext c, int index) {
            if(tracks.getTracks()[index]["title"] != "") {
              return new ListTile(
                title: new Text(tracks.getTracks()[index]["title"]),
                leading: new Icon(Icons.playlist_add),
                onTap: () {
                currentSelectedTrack = Track(tracks.getTracks()[index]["url"].toString(), int.parse(tracks.getTracks()[index]["ageYear"]));
              },
            );
          }
        },
        padding: EdgeInsets.only(left: 10, right:10, top:10, bottom:10),
      ),
    );
  }
}