import 'package:F_202030_SimpleStateProvider/model/single_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BinToDec extends StatefulWidget {
  @override
  _BinToDecState createState() => _BinToDecState();
}

class _BinToDecState extends State<BinToDec> {
  String _binary = "0";
  String _decimal = "0";

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<SingleModel>(
      create: (context) => SingleModel(),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(16.0),
                alignment: Alignment.centerRight,
                child: Text(
                  '$_decimal',
                  textAlign: TextAlign.right,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                alignment: Alignment.centerRight,
                child: Text(
                  '$_binary',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              Row(children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(16, 0, 8, 0),
                    child: MaterialButton(
                      color: Colors.blue[100],
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 24, 0, 24),
                        child: Text(
                          "1",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          _binary = _binary + "1";
                          convertToDecimal();
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(8, 0, 16, 0),
                    child: MaterialButton(
                      color: Colors.blue[100],
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 24, 0, 24),
                        child: Text(
                          "0",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          _binary = _binary + "0";
                          convertToDecimal();
                        });
                      },
                    ),
                  ),
                ),
              ]),
              SizedBox(height: 20.0),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.fromLTRB(16, 0, 8, 0),
                      child: MaterialButton(
                        color: Colors.blue[800],
                        onPressed: () {
                          setState(() {
                            _binary = "0";
                            _decimal = "0";
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
                          child: Text(
                            "Clear",
                            style: new TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.fromLTRB(8, 0, 16, 0),
                      child: MaterialButton(
                        color: Colors.blue[800],
                        onPressed: () {
                          setState(() {
                            if (_binary.length == 1) {
                              _binary = "0";
                            }
                            if (_binary.length > 1) {
                              _binary =
                                  _binary.substring(0, _binary.length - 1);
                            }
                            convertToDecimal();
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
                          child: Text(
                            "Delete last",
                            style: new TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void convertToDecimal() {
    setState(() {
      _decimal = int.parse(_binary, radix: 2).toRadixString(10);
    });
  }
}
