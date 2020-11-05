import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  final String item;
  final Function tapped;
  Item({this.item, this.tapped});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: InkWell(
        onTap: tapped,
        child: Container(
          padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
          color: Colors.blue[100],
          child: Text(
            item,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
