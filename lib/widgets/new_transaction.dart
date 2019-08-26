import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleInput = TextEditingController();
  final amountInput = TextEditingController();

  NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(5),
        child: Column(
          children: <Widget>[
            TextField(
              controller: titleInput,
              decoration: InputDecoration(labelText: 'Title'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountInput,
            ),
            FlatButton(
              padding: EdgeInsets.all(5),
              child: Text("Add Transaction"),
              textColor: Colors.purple,
              onPressed: () {
                addTx(titleInput.text, double.parse(amountInput.text));
              },
            )
          ],
        ),
      ),
    );
  }
}
