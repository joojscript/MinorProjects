import 'package:flutter/material.dart';

class MagicHubTheme extends ChangeNotifier {
  String _selectedTheme = 'light';

  // ignore: non_constant_identifier_names
  final DarkThemeColors = {
    "kMenuTextItem": TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.normal,
      fontSize: 30.0,
    ),
    "kLeadingColor": Color(0xff3A4DE3),
    "kUnleadingColor": Colors.black87,
    "kLogoTextStyle": TextStyle(
        color: Colors.white,
        fontSize: 30,
        fontFamily: 'ReemKufi',
        fontWeight: FontWeight.bold),
    "kBigTextStyle": TextStyle(
      color: Colors.white,
      fontSize: 15,
      fontWeight: FontWeight.w100,
      decoration: TextDecoration.none,
      fontFamily: 'Montserrat',
    ),
    "kGiantTextStyle": TextStyle(
      color: Colors.white,
      fontSize: 40,
      decoration: TextDecoration.none,
      fontFamily: 'Bebas',
    )
  };

  // ignore: non_constant_identifier_names
  final LightThemeColors = {
    "kMenuTextItem": TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.normal,
      fontSize: 30.0,
    ),
    "kLeadingColor": Color(0xff3A4DE3),
    "kUnLeadingColor": Colors.white,
    "kLogoTextStyle": TextStyle(
        color: Colors.black,
        fontSize: 30,
        fontFamily: 'ReemKufi',
        fontWeight: FontWeight.bold),
    "kBigTextStyle": TextStyle(
      color: Colors.black,
      fontSize: 15,
      fontWeight: FontWeight.w100,
      decoration: TextDecoration.none,
      fontFamily: 'Montserrat',
    ),
    "kGiantTextStyle": TextStyle(
      color: Colors.black,
      fontSize: 40,
      decoration: TextDecoration.none,
      fontFamily: 'Bebas',
    )
  };

  void toggleTheme() {
    if (this._selectedTheme == 'dark') {
      this._selectedTheme = 'light';
    } else {
      this._selectedTheme = 'dark';
    }
    notifyListeners();
  }

  String getSelectedTheme() {
    return this._selectedTheme;
  }
}
