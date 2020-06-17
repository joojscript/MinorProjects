import 'package:flutter/material.dart';
import 'package:getflutter/getflutter.dart';

class StandardButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  final Color textColor;

  StandardButton({@required this.text, this.onPressed, this.textColor});

  @override
  Widget build(BuildContext context) {
    return GFButton(
      type: GFButtonType.outline2x,
      textColor: this.textColor,
      color: Colors.deepPurple,
      onPressed: this.onPressed,
      text: this.text,
    );
  }
}
