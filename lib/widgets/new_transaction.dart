import 'package:flutter/material.dart';

class NewTransactions extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: "Title"),
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: "Amount"),
              controller: amountController,
            ),
            FlatButton(
              textColor: Colors.purple,
              onPressed: () {},
              child: Text(
                "Add Transaction",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
