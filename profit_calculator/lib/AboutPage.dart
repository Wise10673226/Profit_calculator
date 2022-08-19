import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('About'),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'A developer with a strong background in software and web development and a wide range of skills. I have a passion for this profession and have always been quite productive. Working on projects from conception to completion is a challenge I like. I also enjoy using my coding and technical talents to use the ideas of my clients to tackle challenges in the humanities. To know more about me, visit my linked in https://www.linkedin.com/in/wise-richard-ekpe-383ab7171/. Also the app was just an hour project to help calculate the basic profit and profit percentages earned by sellers on items they sell.',
                style: TextStyle(height: 1.5, letterSpacing: 1),
              ),
            )
          ],
        ));
  }
}
