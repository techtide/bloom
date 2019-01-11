import 'package:flutter/material.dart';
import 'package:bloom/pages/country_selector_module.dart';

class SettingScreen extends StatefulWidget {
  SettingScreenState createState() {
    return new SettingScreenState();
  }
}

class SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    // return new Center(child: new Text("Settings"));
    // return Column(
    //   children: <Widget>[
    //     new CountrySelector()
    //   ],
    // );
    return new CountrySelector();
  }
}