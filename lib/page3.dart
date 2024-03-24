import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 350,
            height: 800,
            color: Colors.red,
            child: Center(
                child: Text(
              'Container',
              style: TextStyle(color: Colors.white, fontSize: 30),
            )),
          )
        ],
      ),
    );
  }
}
