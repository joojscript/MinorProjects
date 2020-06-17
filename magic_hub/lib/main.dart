import 'package:flutter/material.dart';
import 'package:magic_hub/utilities/themes.dart';
import 'package:provider/provider.dart';
import './views/Home/index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MagicHubTheme>(
      create: (context) => MagicHubTheme(),
      child: MaterialApp(
        title: 'Magic Hub',
        home: Home(),
      ),
    );
  }
}
