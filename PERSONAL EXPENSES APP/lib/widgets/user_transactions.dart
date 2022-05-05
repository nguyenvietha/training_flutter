import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/widgets/new_transaction.dart';
import 'package:flutter_complete_guide/widgets/transaction_list.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  final List<Transaction> userTransactions;
  final Function addNewTransaction;

  UserTransactions(this.userTransactions, this.addNewTransaction);

  @override
  State<UserTransactions> createState() =>
      _UserTransactionsState(userTransactions, addNewTransaction);
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> userTransactions;
  final Function addNewTransaction;

  _UserTransactionsState(this.userTransactions, this.addNewTransaction);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // NewTransaction(addNewTransaction),
        TransactionList(userTransactions),
      ],
    );
  }
}
