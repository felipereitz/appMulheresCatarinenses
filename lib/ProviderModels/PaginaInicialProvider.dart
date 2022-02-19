import 'package:flutter/material.dart';

class PaginaInicialProvider extends ChangeNotifier{
bool _logostate=false;

bool get logostate => _logostate;

  set logostate(bool value) {
    _logostate = value;
    notifyListeners();
  }
}