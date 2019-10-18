import 'package:champ_app/dashboard/dashboard_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.indigo,
        textTheme: TextTheme(
          headline: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
          title: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
          body1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
          subhead: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          overline: TextStyle(fontSize: 16.0, color: Colors.grey)
        )
      ),
      home: DashboardScreen(),
    );
  }
}


