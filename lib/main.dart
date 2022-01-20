// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:quiz_expenseplanner/models/transaction.dart';
import 'package:intl/intl.dart';
import 'package:quiz_expenseplanner/widgets/new_transaction.dart';
import 'package:quiz_expenseplanner/widgets/transaction_list.dart';
import 'package:quiz_expenseplanner/widgets/user_transaction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  // late String titleInput;
  // late String amountInput;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Expense Planner"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                child: Card(
                  child: Text('CHART!'),
                  color: Colors.blue,
                  elevation: 5,
                ),
              ),
              UserTransaction()
            ],
          ),
        ));
  }
}
