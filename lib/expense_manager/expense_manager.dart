import 'package:flutter/material.dart';
import 'package:learning_flutter/expense_manager/transaction.dart';
import 'package:learning_flutter/expense_manager/transaction_db.dart';
import 'package:learning_flutter/expense_manager/widgets/transaction_item.dart';

class ExpenseManager extends StatelessWidget {

  Transaction transaction = transactions[1];

  @override
  Widget build(BuildContext context) {
    return Center(
      /*child: TransactionItem(transaction),*/
      child: TextField(
        decoration: InputDecoration(
          /*hintText: "This is hint",*/
          labelText: "Email",
          border: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey)
          ),
          fillColor: Colors.grey,
          filled: true,
          prefixIcon: Icon(Icons.mail)
        ),
        keyboardType: TextInputType.numberWithOptions(signed: true),
        textInputAction: TextInputAction.none,
      ),
    );
  }
}