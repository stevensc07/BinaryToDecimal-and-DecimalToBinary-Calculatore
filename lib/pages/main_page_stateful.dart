import 'package:F_202030_SimpleStateProvider/widgets/binToDec.dart';
import 'package:F_202030_SimpleStateProvider/widgets/decToBin.dart';
import 'package:flutter/material.dart';

class MainPageStateful extends StatefulWidget {
  @override
  _MainPageStatefulState createState() => _MainPageStatefulState();
}

class _MainPageStatefulState extends State<MainPageStateful> {
  int _id = 0;
  String _buttonText = "Binary to Decimal";
  _onPressed() {
    setState(() {
      _id = _id == 0 ? 1 : 0;
      _buttonText = _id == 0 ? "Binary to Decimal" : "Decimal to Binary";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(8.0),
          color: Colors.blueGrey[50],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                _buttonText,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              FlatButton(
                color: Colors.blueGrey[800],
                onPressed: () => _onPressed(),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
                  child: Text(
                    'Change',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: _id == 0 ? BinToDec() : DecToBin(),
        )
      ],
    );
  }
}
