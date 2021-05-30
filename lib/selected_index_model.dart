import 'package:flutter/material.dart';


class SelectedIndexModel with ChangeNotifier{
  int _selectedIndex=0;
  void onItemTapped(int index) {
    _selectedIndex = index;
    notifyListeners();
  }
  int get currentIndex=> _selectedIndex;
}
