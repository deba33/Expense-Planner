import 'package:flutter/material.dart';

import './new_transaction.dart';
import './transaction_list.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: "t1",
      title: "Shoes",
      amount: 99.9,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t2",
      title: "Phone",
      amount: 299.9,
      date: DateTime.now(),
    ),
  ];

  void _addNewTransactions(String txTitle, double txAmount) {
    final newTx = Transaction(
      id: DateTime.now().toString(),
      title: txTitle,
      amount: txAmount,
      date: DateTime.now(),
    );

    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransactions(_addNewTransactions),
        TransactionList(_userTransactions),
      ],
    );
  }
}
