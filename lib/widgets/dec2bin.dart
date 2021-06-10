import 'package:demo_app/provider/convertion_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Dec2Bin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final calculator = Provider.of<ConvertionModel>(context, listen: false);

    return Container(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Consumer<ConvertionModel>(
              builder: (context, calculator, child) {
                return Container(
                  padding: const EdgeInsets.all(8.0),
                  alignment: Alignment.centerRight,
                  child: Text(
                    calculator.decimal,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).accentColor,
                        fontSize: 35),
                  ),
                );
              },
            ),
            Consumer<ConvertionModel>(
              builder: (context, calculator, child) {
                return Container(
                  padding: const EdgeInsets.all(8.0),
                  alignment: Alignment.centerRight,
                  child: Text(
                    calculator.binary,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).accentColor,
                        fontSize: 35),
                  ),
                );
              },
            ),
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
                      color: Theme.of(context).primaryColor,
                      child: Text(
                        "1",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () => calculator.updateDecimal(1),
                    ),
                  )),
                  Expanded(
                      child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: MaterialButton(
                      color: Theme.of(context).primaryColor,
                      child: Text(
                        "2",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () => calculator.updateDecimal(2),
                    ),
                  )),
                  Expanded(
                      child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: MaterialButton(
                      color: Theme.of(context).primaryColor,
                      child: Text(
                        "3",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () => calculator.updateDecimal(3),
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
                      color: Theme.of(context).primaryColor,
                      child: Text(
                        "4",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () => calculator.updateDecimal(4),
                    ),
                  )),
                  Expanded(
                      child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: MaterialButton(
                      color: Theme.of(context).primaryColor,
                      child: Text(
                        "5",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () => calculator.updateDecimal(5),
                    ),
                  )),
                  Expanded(
                      child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: MaterialButton(
                      color: Theme.of(context).primaryColor,
                      child: Text(
                        "6",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () => calculator.updateDecimal(6),
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
                      color: Theme.of(context).primaryColor,
                      child: Text(
                        "7",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () => calculator.updateDecimal(7),
                    ),
                  )),
                  Expanded(
                      child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: MaterialButton(
                      color: Theme.of(context).primaryColor,
                      child: Text(
                        "8",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () => calculator.updateDecimal(8),
                    ),
                  )),
                  Expanded(
                      child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: MaterialButton(
                      color: Theme.of(context).primaryColor,
                      child: Text(
                        "9",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () => calculator.updateDecimal(9),
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
                          color: Theme.of(context).accentColor,
                          onPressed: () => calculator.reset(),
                          child: Text(
                            "Reset",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )),
                  Expanded(
                      flex: 1,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: MaterialButton(
                          color: Theme.of(context).primaryColor,
                          child: Text(
                            "0",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () => calculator.updateDecimal(0),
                        ),
                      )),
                ],
              ),
            )),
          ]),
    );
  }
}
