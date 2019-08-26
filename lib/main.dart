import 'package:flutter/material.dart';
import './widgets/user_transactions.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('First Route'),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Container(
                child: Card(
                  color: Colors.blue,
                  child: Text('Chartt!'),
                  elevation: 5,
                ),
              ),
              UserTransactions()
            ],
          ),
        ));
  }
}
