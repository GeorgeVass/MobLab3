import 'package:flutter/cupertino.dart';

class CartModel extends ChangeNotifier {
  int data = 0;

  void addGood() {
    data++;
    notifyListeners();
  }
}

class CartModelCopy extends ChangeNotifier {
  int data = 0;

  void addGood() {
    data++;
    notifyListeners();
  }
}