import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class MainScreenVM with ChangeNotifier {

final GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();

final ItemScrollController itemScrollController = ItemScrollController();
final ScrollOffsetController scrollOffsetController = ScrollOffsetController();
final ItemPositionsListener itemPositionsListener = ItemPositionsListener.create();
final ScrollOffsetListener scrollOffsetListener = ScrollOffsetListener.create();

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