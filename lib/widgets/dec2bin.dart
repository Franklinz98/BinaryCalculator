import 'package:flutter/material.dart';

class Dec2Bin extends StatefulWidget {
  @override
  _Dec2BinState createState() => _Dec2BinState();
}

class _Dec2BinState extends State<Dec2Bin> {
  String _binary = "0";
  String _decimal = "0";

  void _onPressed(int k) {
    setState(() {
      switch (k) {
        case 0:
          _decimal = _decimal + "0";
          _binary = int.parse(_decimal, radix: 10).toRadixString(2);
          break;
        case 1:
          _decimal = _decimal + "1";
          _binary = int.parse(_decimal, radix: 10).toRadixString(2);
          break;
        case 2:
          _decimal = _decimal + "2";
          _binary = int.parse(_decimal, radix: 10).toRadixString(2);
          break;
        case 3:
          _decimal = _decimal + "3";
          _binary = int.parse(_decimal, radix: 10).toRadixString(2);
          break;
        case 4:
          _decimal = _decimal + "4";
          _binary = int.parse(_decimal, radix: 10).toRadixString(2);
          break;
        case 5:
          _decimal = _decimal + "5";
          _binary = int.parse(_decimal, radix: 10).toRadixString(2);
          break;
        case 6:
          _decimal = _decimal + "6";
          _binary = int.parse(_decimal, radix: 10).toRadixString(2);
          break;
        case 7:
          _decimal = _decimal + "7";
          _binary = int.parse(_decimal, radix: 10).toRadixString(2);
          break;
        case 8:
          _decimal = _decimal + "8";
          _binary = int.parse(_decimal, radix: 10).toRadixString(2);
          break;
        case 9:
          _decimal = _decimal + "9";
          _binary = int.parse(_decimal, radix: 10).toRadixString(2);
          break;
        case -1:
          _decimal = "0";
          _binary = "0";
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
                padding: const EdgeInsets.all(8.0),
                alignment: Alignment.centerRight,
                child: Text(
                  '$_decimal',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xffff5448),
                      fontSize: 35),
                )),
            Container(
                padding: const EdgeInsets.all(8.0),
                alignment: Alignment.centerRight,
                child: Text(
                  '$_binary',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xffff5448),
                      fontSize: 35),
                )),
            Expanded(
                child: Container(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                      child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: MaterialButton(
                      color: Color(0xffffccaa),
                      child: Text("1"),
                      onPressed: () {
                        _onPressed(1);
                      },
                    ),
                  )),
                  Expanded(
                      child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: MaterialButton(
                      color: Color(0xffffccaa),
                      child: Text("2"),
                      onPressed: () {
                        _onPressed(2);
                      },
                    ),
                  )),
                  Expanded(
                      child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: MaterialButton(
                      color: Color(0xffffccaa),
                      child: Text("3"),
                      onPressed: () {
                        _onPressed(3);
                      },
                    ),
                  )),
                ],
              ),
            )),
            Expanded(
                child: Container(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                      child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: MaterialButton(
                      color: Color(0xffffccaa),
                      child: Text("4"),
                      onPressed: () {
                        _onPressed(4);
                      },
                    ),
                  )),
                  Expanded(
                      child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: MaterialButton(
                      color: Color(0xffffccaa),
                      child: Text("5"),
                      onPressed: () {
                        _onPressed(5);
                      },
                    ),
                  )),
                  Expanded(
                      child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: MaterialButton(
                      color: Color(0xffffccaa),
                      child: Text("6"),
                      onPressed: () {
                        _onPressed(6);
                      },
                    ),
                  )),
                ],
              ),
            )),
            Expanded(
                child: Container(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                      child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: MaterialButton(
                      color: Color(0xffffccaa),
                      child: Text("7"),
                      onPressed: () {
                        _onPressed(7);
                      },
                    ),
                  )),
                  Expanded(
                      child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: MaterialButton(
                      color: Color(0xffffccaa),
                      child: Text("8"),
                      onPressed: () {
                        _onPressed(8);
                      },
                    ),
                  )),
                  Expanded(
                      child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: MaterialButton(
                      color: Color(0xffffccaa),
                      child: Text("9"),
                      onPressed: () {
                        _onPressed(9);
                      },
                    ),
                  )),
                ],
              ),
            )),
            Expanded(
                child: Container(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                      flex: 2,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: MaterialButton(
                            color: Color(0xffff5448),
                            onPressed: () {
                              _onPressed(-1);
                            },
                            child: Text("Reset",
                                style: new TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                ))),
                      )),
                  Expanded(
                      flex: 1,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: MaterialButton(
                          color: Color(0xffffccaa),
                          child: Text("0"),
                          onPressed: () {
                            _onPressed(0);
                          },
                        ),
                      )),
                ],
              ),
            )),
          ]),
    );
  }
}
