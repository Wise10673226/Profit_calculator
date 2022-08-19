import 'package:flutter/material.dart';

class HelpPage extends StatefulWidget {
  const HelpPage({Key? key}) : super(key: key);

  @override
  State<HelpPage> createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Help'),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "1. To calculate the profit and profit percentages on a single item, click on the first tile and input the cost price and selling price respectively. When done click on the calculate profit button to get your result.                     2. To calculate the profit and profit percentage on bulk items, click on the second tile and follow the same steps as done for the single item.",
                style: TextStyle(height: 1.5, letterSpacing: 1.5),
              ),
            )
          ],
        ));
  }
}
