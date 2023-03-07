import 'package:flutter/material.dart';

class BotNavBarProvider extends ChangeNotifier {
  int pageIndex = 0;
  final PageController pageController = PageController();

  /// used by PageView
  void updatePageIndex(int index) {
    pageIndex = index;
    notifyListeners();
  }

  /// used by BotNavBar
  void updatePageIndexAnimate(int index) {
    pageIndex = index;
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeOut,
    );
    notifyListeners();
  }
}
