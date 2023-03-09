import 'package:flutter/material.dart';

class BotNavBarProvider extends ChangeNotifier {
  int _pageIndex = 0;
  final PageController _pageController = PageController();

  get pageIndex => _pageIndex;
  get pageController => _pageController;

  /// used by PageView
  void updatePageIndex(int index) {
    _pageIndex = index;
    notifyListeners();
  }

  /// used by BotNavBar
  void updatePageIndexAnimate(int index) {
    _pageIndex = index;
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeOut,
    );
    notifyListeners();
  }
}
