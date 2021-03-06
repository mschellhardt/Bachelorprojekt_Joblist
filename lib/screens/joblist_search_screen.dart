import 'dart:math';

import 'package:flutter/material.dart';

class JobListSearchScreen extends StatelessWidget {
  const JobListSearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const _colorGrey = Color.fromRGBO(129, 129, 129, 1);
    const _colorRed = Color.fromRGBO(177, 72, 72, 1);
    const _colorBlue = Color.fromRGBO(86, 126, 155, 1);
    const _colorGreen = Color.fromRGBO(96, 158, 119, 1);
    const _colorYellow = Color.fromRGBO(239, 243, 130, 1);
    final List<Color> _jobColors = [
      _colorBlue,
      _colorGreen,
      _colorYellow,
      _colorRed
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: _colorGrey,
        title: Text('Alle Jobs'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            buildSearchBar(),
            for (int i = 0; i < 7; i++) generateSingleJobCard(_jobColors)
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Suche',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Startseite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
        selectedItemColor: Colors.black,
      ),
    );
  }
}

Widget generateSingleJobCard(List<Color> _jobColors) {
  final _random = new Random();
  Color _color = _jobColors[_random.nextInt(_jobColors.length)];

  return (Center(
    child: Container(
      margin: EdgeInsets.only(top: 20),
      child: Card(
        shape: Border(
          top: BorderSide(color: _color, width: 10),
          right: BorderSide(color: _color, width: 10),
        ),
        child: SizedBox(
          width: 320,
          height: 130,
          child: Row(
            children: [
              Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Jobtitel',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          )),
                      Container(height: 10),
                      Container(
                        width: 200,
                        child: Text(
                            'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt.'),
                      ),
                    ],
                  )),
              Spacer(),
              Container(
                margin: EdgeInsets.only(right: 30),
                decoration: BoxDecoration(
                  color: _color,
                  border: Border.all(color: _color),
                  borderRadius: BorderRadius.all(
                    Radius.circular(100),
                  ),
                ),
                child: IconButton(
                  icon: const Icon(Icons.arrow_forward_ios),
                  tooltip: '',
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  ));
}

Widget buildSearchBar() {
  return (Center(
    child: Container(
      margin: EdgeInsets.only(top: 20, bottom: 10),
      child: Card(
        shape: Border.all(color: Colors.grey, width: 0.5),
        child: SizedBox(
          width: 320,
          height: 35,
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text('Suche ...'),
              ),
              Spacer(),
              IconButton(
                icon: const Icon(Icons.search),
                tooltip: '',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    ),
  ));
}
