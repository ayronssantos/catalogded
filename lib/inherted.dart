import 'package:flutter/material.dart';

class MonsterInformation extends InheritedWidget {
  const MonsterInformation({Key? key, required this.child})
      : super(key: key, child: child);

  @override
  final Widget child;

  static MonsterInformation? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MonsterInformation>();
  }

  @override
  bool updateShouldNotify(MonsterInformation oldWidget) {
    return true;
  }
}
