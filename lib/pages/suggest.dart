import 'package:flutter/material.dart';
import 'package:bloom/models/music.dart';
import 'package:bloom/config.dart' as config;
import 'package:fluttertoast/fluttertoast.dart';
import 'package:bloom/pages/player.dart';
import 'package:bloom/home.dart';

class SuggestScreen extends StatefulWidget {
  @override
  SuggestScreenState createState() {
    return new SuggestScreenState();
  }
}

class SuggestScreenState extends State<SuggestScreen> {
  Tracks tracks = new Tracks();
  
  TextEditingController controller = new TextEditingController();
  String filter = "";
  
  @override
  initState() {
    controller.addListener(() {
      setState(() {
  	    var year = (2018 - int.parse(controller.text)).toString();
		    filter = year.substring(0,2) + ((int.parse(year.substring(2,4))/10).round()).toString() + "0";
        print(filter);
      });
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

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
          keyboardType: TextInputType.text,
          controller: controller,
        ),
        new Expanded(
          child: new ListView.builder(
            itemCount: tracks.getFilteredTracks(filter, controller.text).length,
            itemBuilder: (BuildContext c, int index) {
              return new ListTile(
                title: new Text(tracks.getFilteredTracks(filter, controller.text)[index]["title"]),
                leading: new Icon(Icons.playlist_add),
                
                onTap: () {
                  if(config.playerState == config.PlayerState.playing) {
                    config.playlist.add(Track(tracks.getFilteredTracks(filter, controller.text)[index]["url"].toString(), tracks.getFilteredTracks(filter, controller.text)[index]["ageYear"], tracks.getFilteredTracks(filter, controller.text)[index]["title"].toString(), tracks.getFilteredTracks(filter, controller.text)[index]["author"].toString(), tracks.getFilteredTracks(filter, controller.text)[index]["image"]));
                    Fluttertoast.showToast(
                      msg: tracks.getFilteredTracks(filter, controller.text)[index]["title"] + " was added to your playlist."
                    );
                  } else {
                    currentSelectedTrack = Track(tracks.getFilteredTracks(filter, controller.text)[index]["url"].toString(), tracks.getFilteredTracks(filter, controller.text)[index]["ageYear"], tracks.getFilteredTracks(filter, controller.text)[index]["title"].toString(), tracks.getFilteredTracks(filter, controller.text)[index]["author"].toString(), tracks.getFilteredTracks(filter, controller.text)[index]["image"]);
                    print(tracks.getFilteredTracks(filter, controller.text)[index]["image"]);
                  }
                }
              );
            },
            padding: EdgeInsets.only(left: 10, right:10, top:10, bottom:10),
          ),
        )
      ]
    );
  }
}