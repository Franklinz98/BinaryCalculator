import 'package:flutter/cupertino.dart';

class ConvertionModel extends ChangeNotifier {
  String _decimal = "0", _binary = "0";

  String get decimal => _decimal;
  String get binary => _binary;

  void updateDecimal(int digit) {
    if (_decimal == "0") {
      _decimal = "$digit";
    } else {
      _decimal = _decimal + "$digit";
    }
    _binary = int.parse(_decimal, radix: 10).toRadixString(2);
    notifyListeners();
  }

  void updateBinary(int digit) {
    if (_binary == "0") {
      _binary = "$digit";
    } else {
      _binary = _binary + "$digit";
    }
    _decimal = int.parse(_binary, radix: 2).toRadixString(10);
    notifyListeners();
  }

  void reset() {
    _decimal = "0";
    _binary = "0";
    notifyListeners();
  }
}
