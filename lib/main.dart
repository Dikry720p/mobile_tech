import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas pertemuan 3',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('tugas pertemuan 3'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Ini adalah contoh aplikasi Flutter',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                    child: Center(child: Text('Box 1')),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.green,
                    child: Center(child: Text('Box 2')),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.blue,
                    child: Center(child: Text('Box 3')),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Container(
                width: 200,
                height: 200,
                color: Colors.orange,
                child: Center(child: Text('Container 1')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
