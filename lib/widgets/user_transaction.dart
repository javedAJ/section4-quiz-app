import 'package:flutter/material.dart';
import 'package:quiz_expenseplanner/models/transaction.dart';
import 'package:quiz_expenseplanner/widgets/new_transaction.dart';
import 'package:quiz_expenseplanner/widgets/transaction_list.dart';

class UserTransaction extends StatefulWidget {
  UserTransaction({Key? key}) : super(key: key);

  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransaction = [
    Transaction(
        id: 't1', title: 'New Shoes', amount: 69.99, date: DateTime.now()),
    Transaction(
        id: 't2',
        title: 'Weekly Grocceric',
        amount: 19.20,
        date: DateTime.now()),
  ];

  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
        title: txTitle,
        amount: txAmount,
        date: DateTime.now(),
        id: DateTime.now().toString());
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(),
        // ignore: prefer_const_constructors
        TransactionList(_userTransaction),
      ],
    );
  }
}
