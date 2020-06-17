import 'package:flutter/material.dart';
import 'package:magic_hub/utilities/themes.dart';
import 'package:provider/provider.dart';

class FormInput extends StatelessWidget {
  final String label;

  FormInput({this.label});

  @override
  Widget build(BuildContext context) {
    MagicHubTheme theme = Provider.of<MagicHubTheme>(context);
    return Row(
      children: <Widget>[
        Text(
          this.label,
          style: TextStyle(
              color: theme.getSelectedTheme() == "dark"
                  ? Colors.white
                  : Colors.black,
              fontSize: 12.0,
              fontFamily: 'Bebas',
              fontWeight: FontWeight.w200),
        ),
        TextField(
          decoration: InputDecoration(),
        ),
      ],
    );
  }
}
