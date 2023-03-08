import 'package:flutter/material.dart';

class CvPanelProvider extends ChangeNotifier {
  final List<bool> _isOpen = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];

  set isOpen(int index) {
    _isOpen[index] = !_isOpen[index];
    notifyListeners();
  }

  List<bool> getIsOpen() => _isOpen;
}
