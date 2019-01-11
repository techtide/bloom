import 'package:flutter/material.dart';

class CountrySelector extends StatefulWidget {
  @override
  CountrySelectorState createState() {
    return new CountrySelectorState();
  }
}

class CountrySelectorState extends State<CountrySelector> {
  List<String> countries = ["US", "UK", "India", "Japan"];

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Row(
          children: <Widget>[
            new Text("Country"),

            new DropdownButton(
              items: countries.map((String country) {
                return new DropdownMenuItem(
                  value: country,
                  child: new Text(country),
                );
              }).toList(),
            ),
          ],
          mainAxisSize: MainAxisSize.min,
        ),
      ],
    );
  }
}