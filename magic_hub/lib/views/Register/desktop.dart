import 'package:flutter/material.dart';
import 'package:getflutter/components/button/gf_button.dart';
import 'package:getflutter/getflutter.dart';
import 'package:magic_hub/components/desktop/generic_page.dart';
import 'package:magic_hub/components/desktop/input_box.dart';
import 'package:magic_hub/components/standard_switch.dart';
import 'package:magic_hub/utilities/themes.dart';
import 'package:provider/provider.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MagicHubTheme theme = Provider.of<MagicHubTheme>(context);
    MediaQueryData queryData = MediaQuery.of(context);
    return GenericPage(
      desktopChild: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text('Registre-se e\nnão fique de fora!',
              style: theme.getSelectedTheme() == "dark"
                  ? theme.DarkThemeColors["kGiantTextStyle"]
                  : theme.LightThemeColors["kGiantTextStyle"]),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.deepPurple, width: 2),
            ),
            width: queryData.size.width * 0.4,
            height: queryData.size.height * 0.5,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Wrap(
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      InputBox(
                        label: "Email",
                        isObscure: false,
                        hasAutofocus: true,
                      ),
                      InputBox(
                        label: "Senha",
                        isObscure: true,
                      ),
                      Container(
                        child: StandardSwitch(
                          label: 'Lembrar-me',
                        ),
                      ),
                      Container(
                        child: GFButton(
                            onPressed: () {},
                            text: 'Registrar!',
                            color: Colors.purple,
                            type: GFButtonType.solid),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
