import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:profit_calculator/AboutPage.dart';
import 'package:profit_calculator/BulkPage.dart';
import 'package:profit_calculator/HelpPage.dart';
import 'package:profit_calculator/NotePage.dart';
import 'package:profit_calculator/SinglePage.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Profit Calculator'),
          centerTitle: true,
        ),

//below the grid starts here
        body: GridView.count(shrinkWrap: true, crossAxisCount: 2, children: [
          InkWell(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15, top: 20),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  elevation: 3,
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 8.0, right: 8, top: 20),
                        child: Image.asset(
                          'assets/images/single.png',
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Text('Single items'),
                    ],
                  ),
                ),
              ),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SinglePage()));
            },
          ),
          InkWell(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15, top: 20),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  elevation: 3,
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 8.0, right: 8, top: 20),
                        child: Image.asset(
                          'assets/images/bulk.png',
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Text('Bulk items'),
                    ],
                  ),
                ),
              ),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => BulkPage()));
            },
          ),
          InkWell(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15, top: 20),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  elevation: 3,
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 8.0, right: 8, top: 20),
                        child: Image.asset(
                          'assets/images/help.png',
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Text('Help'),
                    ],
                  ),
                ),
              ),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HelpPage()));
            },
          ),
          InkWell(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15, top: 20),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  elevation: 3,
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 8.0, right: 8, top: 20),
                        child: Image.asset(
                          'assets/images/about.png',
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Text('About'),
                    ],
                  ),
                ),
              ),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AboutPage()));
            },
          ),
        ] //this is the total number of cards

            ),

        //the fab
        floatingActionButton: FloatingActionButton(
            // isExtended: true,
            child: Icon(Icons.add_reaction_outlined),
            backgroundColor: Colors.brown,
            onPressed: () {
              setState(() {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NotePage()));
              });
            }));
  }
}
