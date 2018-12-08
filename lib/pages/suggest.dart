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
  
  TextEditingController searchController = new TextEditingController();
  String filter;

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Padding(
          padding: new EdgeInsets.only(top: 0.0),
        ),
        new TextField(
          decoration: new InputDecoration(
            labelText: "Patient's age",
            border: InputBorder.none,
          ),
          keyboardType: TextInputType.number,
          controller: searchController,
        ),
        new Expanded(
          child: new ListView.builder(
            itemCount: tracks.getTracks().length,
            itemBuilder: (BuildContext c, int index) {
                if(tracks.getTracks()[index]["title"] != "") {
                  return new ListTile(
                    title: new Text(tracks.getTracks()[index]["title"]),
                    leading: new Icon(Icons.playlist_add),
                    onTap: () {
                    currentSelectedTrack = Track(tracks.getTracks()[index]["url"].toString(), int.parse(tracks.getTracks()[index]["ageYear"]), tracks.getTracks()[index]["title"].toString(), tracks.getTracks()[index]["author"].toString());
                  },
                );
              }
            },
            padding: EdgeInsets.only(left: 10, right:10, top:10, bottom:10),
          ),
        )
      ]
    );
  }
}