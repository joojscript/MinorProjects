import 'package:flutter/material.dart';
import 'package:magic_hub/utilities/themes.dart';
import 'package:magic_hub/components/desktop/navbar.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

class GenericPage extends StatelessWidget {
  final Widget desktopChild;
  final Widget mobileChild;

  GenericPage({this.desktopChild, this.mobileChild});

  @override
  Widget build(BuildContext context) {
    MagicHubTheme theme = Provider.of<MagicHubTheme>(context);
    return Scaffold(
      body: Container(
        color: theme.getSelectedTheme() == "dark"
            ? theme.DarkThemeColors["kUnleadingColor"]
            : theme.LightThemeColors["kUnleadingColor"],
        padding: const EdgeInsets.all(30.0),
        child: ScreenTypeLayout.builder(
          desktop: (BuildContext context) => (Column(
            children: <Widget>[
              NavBarDesktop(),
              Expanded(
                child: Container(
                  child: this.desktopChild,
                ),
              ),
            ],
          )),
          mobile: (BuildContext context) => (this.mobileChild),
        ),
      ),
    );
  }
}
