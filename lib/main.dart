// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:pert3/page1.dart';
import 'package:pert3/page2.dart';
import 'package:pert3/page3.dart';
import 'package:pert3/page4.dart';
import 'package:pert3/page5.dart';
import 'package:pert3/pertemuan4.dart';
import 'package:pert3/pertemuan5.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'row,column,container',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Page1(),
        '/page2': (context) => Page2(),
        '/page3': (context) => Page3(),
        '/page4': (context) => Page4(),
        '/page5': (context) => Page5(),
        '/pert4': (context) => Pert4(),
        '/pert5': (context) => Pert5(),
      },
    );
  }
}
