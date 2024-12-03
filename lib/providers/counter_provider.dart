import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _counter = 15;

  get counter => this._counter;

  void incrementCounter() {
    this._counter++;
    notifyListeners();
  }

  void decrementCounter() {
    this._counter--;
    notifyListeners();
  }
}
