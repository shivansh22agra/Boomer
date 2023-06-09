import 'package:flutter/material.dart';

class DashBoardViewModel extends ChangeNotifier {
  int selectedIndex = 0;
  PageController pageController = PageController();
  // int get counter => _counter;
void onPageChanged(int index) {
    selectedIndex = index;
    notifyListeners();
  }
  void toggleTab(int index) {
    selectedIndex = index;
    print(' index $index');

    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 300), curve: Curves.easeIn);

    notifyListeners();
  }
}
