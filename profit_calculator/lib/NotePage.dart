import 'package:flutter/material.dart';

class NotePage extends StatefulWidget {
  const NotePage({Key? key}) : super(key: key);

  @override
  State<NotePage> createState() => _NotePageState();
}

class _NotePageState extends State<NotePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Quick tips'),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "1. What is Profit formula? The profit formula is used to calculate the amount of gain that has been made in a transaction. When the Selling price of a product is greater than its Cost price, a profit is earned. This makes up the basic profit formula which further helps in generating the percentage of profit that has been earned in a business or while making a financial deal.                                                        2. What is profit percentage formula? Profit percentage (%) is the amount of profit expressed in terms of percentage. This profit is based on the cost price, hence, the formula to find the profit percentage is: (Profit/Cost Price) × 100.",
                style: TextStyle(height: 1.5, letterSpacing: 1.5),
              ),
            )
          ],
        ));
  }
}
