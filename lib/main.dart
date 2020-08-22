import 'package:flutter/material.dart';
import 'package:remotedoctor/StartSlide/start_frist_page.dart';
import 'package:remotedoctor/Constances/color_contances.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData(
        primaryColor: kPrimaryColor,
        accentColor: kAccentColor
    ),
      debugShowCheckedModeBanner: false,
      home:FristPage() ,

    );
  }
}
