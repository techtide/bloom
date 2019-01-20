import 'package:flutter/material.dart';
import 'package:bloom/pages/suggest.dart';
import 'package:bloom/pages/player.dart';
import 'package:bloom/pages/settings.dart';
import 'package:bloom/models/music.dart' as music;

class BloomHome extends StatefulWidget {
  @override
  _BloomHomeState createState() => new _BloomHomeState();
}

class _BloomHomeState extends State<BloomHome> with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = new TabController(vsync: this, initialIndex: 1, length: 4);
    music.Tracks.refreshAllLists();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Bloom"),
        elevation: 0.7,
        bottom: new TabBar(
          controller:  tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            new Tab(text: "SUGGEST"),
            new Tab(text: "PLAYER"),
            new Tab(text: "SETTINGS"),
          ],
        ),
      ),
      body: new TabBarView(
        controller: tabController,
        children: <Widget>[
          new SuggestScreen(),
          new PlayerScreen(),
          new SettingScreen(),
        ],
      )
    );
  }
}