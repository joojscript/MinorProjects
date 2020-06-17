import 'package:flutter/material.dart';
import './home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'People Counter',
      theme: ThemeData(
        platform: TargetPlatform.iOS,
        primarySwatch: Colors.blue,
        backgroundColor: Color.lerp(Color(0xFFf2f2f2), Colors.black, 0.005),
        scaffoldBackgroundColor: Color(0xFFf2f2f2),
        dialogBackgroundColor: Colors.grey[300],
        appBarTheme: AppBarTheme(
          brightness: Brightness.light,
          color: Color(0xFFf2f2f2),
          textTheme: TextTheme(
            title: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
      ),
      home: Home(),
    );
  }
}
