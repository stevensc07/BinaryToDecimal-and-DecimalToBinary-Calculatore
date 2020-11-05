import 'dart:ui';

import 'package:F_202030_SimpleStateProvider/model/single_model.dart';
import 'package:F_202030_SimpleStateProvider/widgets/item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DecToBin extends StatefulWidget {
  @override
  _DecToBinState createState() => _DecToBinState();
}

class _DecToBinState extends State<DecToBin> {
  String _binary = '0';
  String _decimal = '0';

  updateNumber(String value) {
    setState(() {
      _decimal = _decimal == '0' ? value : _decimal + value;
      // Covert _decimal to _binary
      _binary = int.parse(_decimal, radix: 10).toRadixString(2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<SingleModel>(
      create: (context) => SingleModel(),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(16.0),
                alignment: Alignment.centerRight,
                child: Text(
                  '$_binary',
                  textAlign: TextAlign.right,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                alignment: Alignment.centerRight,
                child: Text(
                  '$_decimal',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                child: Row(
                  children: [
                    Item(
                      item: '1',
                      tapped: () => updateNumber('1'),
                    ),
                    SizedBox(width: 10),
                    Item(
                      item: '2',
                      tapped: () => updateNumber('2'),
                    ),
                    SizedBox(width: 10),
                    Item(
                      item: '3',
                      tapped: () => updateNumber('3'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                child: Row(
                  children: [
                    Item(
                      item: '4',
                      tapped: () => updateNumber('4'),
                    ),
                    SizedBox(width: 10),
                    Item(
                      item: '5',
                      tapped: () => updateNumber('5'),
                    ),
                    SizedBox(width: 10),
                    Item(
                      item: '6',
                      tapped: () => updateNumber('6'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                child: Row(
                  children: [
                    Item(
                      item: '7',
                      tapped: () => updateNumber('7'),
                    ),
                    SizedBox(width: 10),
                    Item(
                      item: '8',
                      tapped: () => updateNumber('8'),
                    ),
                    SizedBox(width: 10),
                    Item(
                      item: '9',
                      tapped: () => updateNumber('9'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                child: Row(
                  children: [
                    Item(
                      item: '0',
                      tapped: () => updateNumber('0'),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      flex: 2,
                      child: Container(
                        child: MaterialButton(
                          padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                          color: Colors.blue[800],
                          onPressed: () {
                            setState(() {
                              _decimal = '0';
                              _binary = '0';
                            });
                          },
                          child: Text(
                            "Clear",
                            style: new TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
