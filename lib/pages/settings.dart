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
    return new Scaffold(
      body: CountrySelector(),
    );
  }
}