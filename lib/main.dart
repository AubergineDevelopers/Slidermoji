import 'package:flutter/material.dart';

import 'package:demoji/demoji.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _value = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Slidermoji',
      home: Scaffold(
        appBar: AppBar(
          title: Text('\u{1F499}'),
        ),
        body: Center(
          child: Container(
            child: Slider(
              value: _value,
              onChanged: (_newValue) => setState(() {
                _value = _newValue;
              }),
              max: 5,
              min: 0,
              divisions: 5,
              label: _emojify(),
            ),
          ),
        ),
      ),
    );
  }

  String _emojify() {
    switch (_value.floor()) {
      case 0:
        return Demoji.angry;
      case 1:
        return Demoji.neutral_face;
      case 2:
        return Demoji.sweat_smile;
      case 3:
        return Demoji.smiley;
      case 4:
        return Demoji.star_struck;
      case 5:
        return Demoji.heart_eyes;
    }

    return '';
  }
}
