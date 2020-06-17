import 'package:flutter/material.dart';
import 'package:getflutter/components/button/gf_button.dart';
import 'package:getflutter/getflutter.dart';
import 'package:magic_hub/components/desktop/generic_page.dart';
import 'package:magic_hub/utilities/themes.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MagicHubTheme theme = Provider.of<MagicHubTheme>(context);
    return GenericPage(
      desktopChild: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            'A MAIOR COMUNIDADE\nDE MÁGICA ONLINE\nDO BRASIL.',
            style: theme.DarkThemeColors["kGiantTextStyle"],
          ),
          SizedBox(
            width: 30,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Junte-se agora a mais de 500.000\nmágicos ao redor do Brasil para\ncompartilhar conhecimento de\naprender a cada vez mais\ntransformar o mundo (ou pelo\nmenos a forma como vemos ele) ;)',
                style: theme.DarkThemeColors["kBigTextStyle"],
              ),
              GFButton(
                type: GFButtonType.solid,
                color: Colors.green,
                text: 'Entre Agora!',
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
