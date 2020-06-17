import 'package:flutter/material.dart';
import 'package:magic_hub/components/desktop/generic_page.dart';
import 'package:magic_hub/utilities/themes.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MagicHubTheme theme = Provider.of<MagicHubTheme>(context);

    return GenericPage(
      mobileChild: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                child: Image.asset('assets/images/logo.png'),
                height: 100,
              ),
              Text(
                'MAGIC\nHUB',
                style: theme.getSelectedTheme() == 'dark'
                    ? theme.DarkThemeColors['kLogoTextStyle']
                    : theme.LightThemeColors['kLogoTextStyle'],
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Text(
            'A MAIOR COMUNIDADE\nDE MÁGICA ONLINE\nDO BRASIL.',
            style: theme.DarkThemeColors["kGiantTextStyle"],
          ),
        ],
      ),
    );
  }
}
