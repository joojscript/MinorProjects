import 'package:flutter/material.dart';
import 'package:getflutter/getflutter.dart';
import 'package:magic_hub/utilities/themes.dart';
import 'package:provider/provider.dart';
import '../standard_button.dart';

class NavBarDesktop extends StatefulWidget {
  const NavBarDesktop({
    Key key,
  }) : super(key: key);

  @override
  _NavBarDesktopState createState() => _NavBarDesktopState();
}

class _NavBarDesktopState extends State<NavBarDesktop> {
  @override
  Widget build(BuildContext context) {
    MagicHubTheme theme = Provider.of<MagicHubTheme>(context);
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(
            height: 100,
            width: 250,
            child: Row(
              children: <Widget>[
                Image(
                  image: AssetImage('assets/images/logo.png'),
                ),
                Expanded(
                    child: Text(
                  'MAGIC\nHUB',
                  style: theme.getSelectedTheme() == 'dark'
                      ? theme.DarkThemeColors['kLogoTextStyle']
                      : theme.LightThemeColors['kLogoTextStyle'],
                  textAlign: TextAlign.center,
                )),
              ],
            ),
          ),
          Container(
            width: 500,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                StandardButton(
                  textColor: theme.getSelectedTheme() == "dark"
                      ? Colors.white
                      : Colors.black,
                  text: 'Quem somos',
                  onPressed: () {},
                ),
                StandardButton(
                  textColor: theme.getSelectedTheme() == "dark"
                      ? Colors.white
                      : Colors.black,
                  onPressed: () {},
                  text: 'O que fazemos',
                ),
                StandardButton(
                  textColor: theme.getSelectedTheme() == "dark"
                      ? Colors.white
                      : Colors.black,
                  onPressed: () {},
                  text: 'Entre Agora!',
                ),
                GFIconButton(
                  onPressed: () {
                    setState(() {
                      theme.toggleTheme();
                    });
                  },
                  shape: GFIconButtonShape.circle,
                  icon: theme.getSelectedTheme() == "dark"
                      ? Icon(Icons.wb_sunny)
                      : Icon(Icons.brightness_3),
                  color: Colors.purple,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
