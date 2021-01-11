import 'package:bbva_redesing_app/src/pages/home_page.dart';
import 'package:bbva_redesing_app/src/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xff004481),
        canvasColor: Color(0xffDCE9EF),
        primaryTextTheme: TextTheme(
          bodyText1: TextStyle(
            color: Color(0xff004481),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      title: 'BBVA',
      initialRoute: 'home',
      routes: {
        'home': (context) => HomePage(),
        'login': (context) => LoginPage()
      },
    );
  }
}
