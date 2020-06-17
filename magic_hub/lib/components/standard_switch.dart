import 'package:flutter/material.dart';
import 'package:magic_hub/utilities/themes.dart';
import 'package:provider/provider.dart';

class StandardSwitch extends StatelessWidget {
  final String label;
  bool value = false;

  StandardSwitch({this.label});

  @override
  Widget build(BuildContext context) {
    MagicHubTheme theme = Provider.of<MagicHubTheme>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Switch.adaptive(
          onChanged: (bool newValue) {
            this.value = newValue;
          },
          value: value,
          activeColor: Colors.purple,
          hoverColor: Colors.transparent,
          inactiveThumbColor: Colors.grey,
          inactiveTrackColor: Colors.grey,
        ),
        Text(
          this.label,
          style: TextStyle(
              color: theme.getSelectedTheme() == "dark"
                  ? Colors.white
                  : Colors.black,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
