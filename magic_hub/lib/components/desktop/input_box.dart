import 'package:flutter/material.dart';
import 'package:magic_hub/utilities/themes.dart';
import 'package:provider/provider.dart';

class InputBox extends StatelessWidget {
  final bool hasAutofocus;
  final bool isObscure;
  final String label;
  final Function onChanged;

  InputBox(
      {@required this.label,
      this.onChanged,
      this.isObscure,
      this.hasAutofocus = false});

  @override
  Widget build(BuildContext context) {
    MagicHubTheme theme = Provider.of<MagicHubTheme>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        margin: EdgeInsets.all(0),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          border: Border.all(
              color: Colors.deepPurple, style: BorderStyle.solid, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                '${this.label}: ',
                style: TextStyle(
                  color: theme.getSelectedTheme() == "dark"
                      ? Colors.white
                      : Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Bebas',
                  letterSpacing: 3,
                ),
              ),
            ),
            SizedBox(
              width: 2,
              height: 50,
              child: Container(
                color: Colors.deepPurple,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: SizedBox(
                  height: 23,
                  child: TextField(
                    autofocus: this.hasAutofocus,
                    obscureText: this.isObscure,
                    scrollController: ScrollController(initialScrollOffset: 0),
                    onChanged: this.onChanged,
                    style: TextStyle(
                        color: theme.getSelectedTheme() == "dark"
                            ? Colors.white
                            : Colors.black,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'MontSerrat'),
                    decoration: InputDecoration(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
