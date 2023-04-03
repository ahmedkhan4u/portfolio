import 'package:flutter/material.dart';

class MainScreenVM with ChangeNotifier {

final GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();

int? _tabIndex = 0;
int? get tabIndex => _tabIndex;

set setIndex(int index) {
  _tabIndex = index;
  notifyListeners();
}

openCloseDrawer() {
  if (globalKey.currentState!.isDrawerOpen == true){
    globalKey.currentState!.closeDrawer();
    notifyListeners();
    return;
  } else {
    globalKey.currentState!.openDrawer();
    notifyListeners();
  }
}


}