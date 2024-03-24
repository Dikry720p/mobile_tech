import 'package:flutter/material.dart';
import 'package:pert3/page1.dart';
import 'package:pert3/page2.dart';
import 'package:pert3/page3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'contoh penggunaan container, row, column',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Page1(),
        '/page2': (context) => Page2(),
        '/page3': (context) => Page3(),
      },
    );
  }
}
