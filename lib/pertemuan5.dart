import 'package:flutter/material.dart';

class Pert5 extends StatefulWidget {
  @override
  _WAmenuState createState() => _WAmenuState();
}

class _WAmenuState extends State<Pert5> {
  TextEditingController _controller = TextEditingController();
  List<String> _messages = [];

  void _sendMessage(String message) {
    setState(() {
      _messages.add(message);
      _controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Caritana whatsapp'),
      ),
      backgroundColor: Colors.grey[200],
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_messages[index]),
                );
              },
            ),
          ),
          Divider(height: 1.0),
          ListTile(
            leading: Icon(Icons.message),
            title: TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: 'input kode serial node',
                border: InputBorder.none,
              ),
              onSubmitted: (value) {
                if (value.isNotEmpty) {
                  _sendMessage(value);
                }
              },
            ),
            trailing: IconButton(
              icon: Icon(Icons.send),
              onPressed: () {
                if (_controller.text.isNotEmpty) {
                  _sendMessage(_controller.text);
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

void main() {
  runApp(MaterialApp(
    home: Pert5(),
  ));
}
