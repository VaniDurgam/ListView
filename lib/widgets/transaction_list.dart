import 'package:flutter/material.dart';
import '../models/transaction.dart';


class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        itemBuilder: (ctx, index) {
          return Card(
              child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 1,
                  horizontal: 5,
                ),
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Colors.purple,
                  width: 2,
                )),
                padding: EdgeInsets.all(2),
                child: Text(
                  '\$${transactions[index].amount}',
                  //tx.amount.toString(),
                  style: TextStyle(
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(transactions[index].id,
                      style: TextStyle(fontSize: 10,
                      fontWeight: FontWeight.bold,
                      ),
                  ),
                  Text(transactions[index].title,
                  style: TextStyle(fontSize: 10,
                      fontWeight: FontWeight.bold,
                  ),
                  ),
                  //Text(tx.amount.toString()),
                  Text(
                    transactions[index].date.toString(),
                    //DateFormat.yMMMd().format(transactions[index].date),
                    style: TextStyle(fontSize: 10,
                      fontWeight: FontWeight.bold,
                  ),
                    ),
                ],
              )
            ],
          )
              //Text(tx.title),
              );
        },
        itemCount: transactions.length,
      ),
    );
  }
}
