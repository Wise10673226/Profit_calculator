import 'package:flutter/material.dart';

class BulkPage extends StatefulWidget {
  const BulkPage({Key? key}) : super(key: key);

  @override
  State<BulkPage> createState() => _BulkPageState();
}

class _BulkPageState extends State<BulkPage> {
  // where we start working on the inputs
  TextEditingController num1controller = new TextEditingController();
  TextEditingController num2controller = new TextEditingController();
  TextEditingController num3controller = new TextEditingController();
  TextEditingController num4controller = new TextEditingController();
  String profit = "0";
  String percentageprofit = "0";
  String numberofitems = "0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //App bar here
        appBar: AppBar(
          title: Text('Bulk items'),
          centerTitle: true,
        ),
        //the body here
        body: SafeArea(
          child: Scaffold(
            body: Container(
              // 1st textfield
              child: ListView(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        'Profit calculation on bulk items ',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15, right: 10, left: 10),
                    padding:
                        EdgeInsets.only(right: 10, left: 10, top: 7, bottom: 7),
                    child: TextField(
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.number,
                        controller: num4controller,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText:
                                ('Enter the price you bought the bulk item eg.carton'))),
                  ),
                  //2nd
                  Container(
                    margin: EdgeInsets.only(right: 10, left: 10),
                    padding:
                        EdgeInsets.only(right: 10, left: 10, top: 7, bottom: 7),
                    child: TextField(
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.number,
                        controller: num3controller,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText:
                                ('Enter the number of items (packs) in the carton'))),
                  ),

                  Container(
                    margin: EdgeInsets.only(right: 10, left: 10),
                    padding:
                        EdgeInsets.only(right: 10, left: 10, top: 7, bottom: 7),
                    child: TextField(
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.number,
                        controller: num1controller,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText:
                                ('Enter the price each item (packs) costs in the carton'))),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10, left: 10),
                    padding:
                        EdgeInsets.only(right: 10, left: 10, top: 7, bottom: 7),
                    child: TextField(
                        textInputAction: TextInputAction.done,
                        keyboardType: TextInputType.number,
                        controller: num2controller,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText:
                                ('Enter the price you would like to sell the item (packs)'))),
                  ),

                  //button
                  Container(
                      padding: EdgeInsets.only(
                        right: 10,
                        left: 10,
                      ),
                      margin: EdgeInsets.only(right: 10, left: 10, top: 7),
                      child: RaisedButton(
                        color: Colors.brown,
                        textColor: Colors.white,
                        onPressed: () {
                          setState(() {
                            int sum = (int.parse(num2controller.text) -
                                    int.parse(num1controller.text)) *
                                (int.parse(num3controller.text));

                            profit = sum.toString();
                            //int numberofitems = int.parse(num3controller.text) *
                            //  int.parse(profit);

                            //  double percentageprofit = double.parse(profit) /
                            //  double.parse(num1controller.text) *
                            // 100;
                          });
                        },
                        child: Text(
                          'Calculate profit',
                          style: TextStyle(fontSize: 18),
                        ),
                        padding: EdgeInsets.all(15),
                      )),
                  SizedBox(
                    height: 20,
                  ),

                  //where the result is displayed
                  Container(
                    child: Column(
                      children: [
                        Card(
                          elevation: 3,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Text(
                                'The profit on each item (pack) is ' + profit),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Card(
                          elevation: 3,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Text(
                                'The profit percentage on each item (pack) ' +
                                    profit +
                                    '%'),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
