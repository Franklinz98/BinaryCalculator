import 'package:flutter/material.dart';

class Bin2Dec extends StatefulWidget {
  @override
  _Bin2DecState createState() => _Bin2DecState();
}

class _Bin2DecState extends State<Bin2Dec> {
  String _binary = "0";
  String _decimal = "0";

  void _onPressed(int k) {
    setState(() {
      switch (k) {
        case 0:
          _binary = _binary + "0";
          _decimal = int.parse(_binary, radix: 2).toRadixString(10);
          break;
        case 1:
          _binary = _binary + "1";
          _decimal = int.parse(_binary, radix: 2).toRadixString(10);
          break;
        case 2:
          _binary = "0";
          _decimal = "0";
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
                  '$_binary',
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
                  '$_decimal',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xffff5448),
                      fontSize: 35),
                )),
            Expanded(
              flex: 4,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: MaterialButton(
                      color: Color(0xffffccaa),
                      child: Text("1"),
                      onPressed: () {
                        _onPressed(1);
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: MaterialButton(
                      color: Color(0xffffccaa),
                      child: Text("0"),
                      onPressed: () {
                        _onPressed(0);
                      },
                    ),
                  ),
                ),
              ]),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                    color: Color(0xffff5448),
                    onPressed: () {
                      _onPressed(2);
                    },
                    child: Text("Reset",
                        style: new TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ))),
              ),
            ),
          ]),
    );
  }
}
