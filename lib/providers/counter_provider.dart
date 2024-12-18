import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _counter = 15;
  CounterProvider(String base) {
    if (int.tryParse(base) != null) this._counter = int.parse(base);
  }

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
