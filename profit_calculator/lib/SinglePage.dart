import 'package:flutter/material.dart';

class SinglePage extends StatefulWidget {
  const SinglePage({Key? key}) : super(key: key);

  @override
  State<SinglePage> createState() => _SinglePageState();
}

class _SinglePageState extends State<SinglePage> {
  // where we start working on the inputs
  TextEditingController num1controller = new TextEditingController();
  TextEditingController num2controller = new TextEditingController();
  String profit = "0";
  String percentageprofit = "0";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //App bar here
        appBar: AppBar(
          title: Text('Single items'),
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
                        'Profit calculation on a single item ',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 25, right: 10, left: 10),
                    padding:
                        EdgeInsets.only(right: 10, left: 10, top: 7, bottom: 7),
                    child: TextField(
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.number,
                        controller: num1controller,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText:
                                ('Enter the price you bought the item'))),
                  ),

                  // 2nd textfield
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
                                ('Enter the price you would like to sell the item'))),
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
                            int sum = int.parse(num2controller.text) -
                                int.parse(num1controller.text);
                            profit = sum.toString();
                            // double percentageprofit = double.parse(profit) /
                            //   double.parse(num1controller.text) *
                            //  100;
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
                            child: Text('The profit made is ' + profit),
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
                            child: Text('The profit percentage made is ' +
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
