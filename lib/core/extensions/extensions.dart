import 'package:flutter/material.dart';
extension MediaQueryValues on BuildContext {
  double get scrWidth => MediaQuery.sizeOf(this).width;
  double get scrHeight => MediaQuery.sizeOf(this).height;
}

extension WidgetExtenstion on Widget {

  Widget center() => Center(child: this,);
}

extension PaddingHeight on num {

  SizedBox get ph => SizedBox(height: toDouble(),);
  SizedBox get pw => SizedBox(height: toDouble(),);

}

extension ParseNumbers on String {
  int parseInt() {
    return int.parse(this);
  }
}