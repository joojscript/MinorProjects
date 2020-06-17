import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import './desktop.dart' as Desktop;
import './mobile.dart' as Mobile;

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => Mobile.Home(),
      desktop: (BuildContext context) => Desktop.Home(),
    );
    ;
  }
}
