import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        body: Container(
          margin: EdgeInsets.all(5),
          child: ListView(
            children: <Widget>[
              buildCard(Icons.account_box, 'account'),
              buildCard(Icons.account_balance, 'balance'),
            ],
          ),
        ),
      ),
    );
  }

  Card buildCard(IconData icon, String text) {
    return Card(
      elevation: 5,
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(5),
            child: Icon(icon),
          ),
          Text(text)
        ],
      ),
    );
  }
}
