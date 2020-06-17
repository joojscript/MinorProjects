import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:neumorphic/neumorphic.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Color(0xFFf2f2f2),
      systemNavigationBarIconBrightness: Brightness.dark,
    ));

    return Container(
      height: 100,
      width: 100,
      color: Colors.white,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            NeuContainer(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 32),
                  child: Text(
                    'PEOPLE COUNTER',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 32,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
                Text(
                  this.number.toString(),
                  style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 150,
                    decoration: TextDecoration.none,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: NeuButton(
                        onPressed: () {
                          setState(() {
                            if (!(this.number <= 0)) {
                              this.number--;
                            }
                          });
                        },
                        child: Icon(
                          Icons.exposure_neg_1,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: NeuButton(
                        onPressed: () {
                          setState(() {
                            this.number++;
                          });
                        },
                        child: Icon(
                          Icons.exposure_plus_1,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24.0),
                  child: Text(
                    this.number < 10
                        ? 'Sejam bem-vindos!'
                        : 'ENTRADA PROIBIDA!',
                    style: TextStyle(
                      color: this.number < 10 ? Colors.green : Colors.red,
                      fontSize: 16,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class NeuContainer extends StatelessWidget {
  final List<Widget> children;

  NeuContainer({this.children});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.8,
        width: MediaQuery.of(context).size.width * 0.9,
        child: NeuButton(
          onPressed: () {},
          child: Column(
            children: this.children,
          ),
        ),
      ),
    );
  }
}
