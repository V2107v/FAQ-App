import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color backgroundColor = Colors.grey.shade900;

  int random() {
    return Random().nextInt(256);
  }

  Color bgColor(int a, int b, int c) {
    return Color.fromRGBO(a, b, c, 1);
  }

  List<bool> isVisible = [false, false, false, false, false];

  List<IconData> icons = [
    Icons.keyboard_arrow_down,
    Icons.keyboard_arrow_down,
    Icons.keyboard_arrow_down,
    Icons.keyboard_arrow_down,
    Icons.keyboard_arrow_down,
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: backgroundColor,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Expanded(flex: 1, child: Image.asset('images/faq.png')),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            RawMaterialButton(
                              constraints: BoxConstraints(),
                              child: Card(
                                elevation: 5.0,
                                color: Colors.purple,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: ListTile(
                                  trailing: Icon(
                                    icons[0],
                                    color: Colors.white,
                                  ),
                                  title: Text(
                                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry?',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 17.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              onPressed: () {
                                setState(() {
                                  backgroundColor = Colors.purple;
                                  if (isVisible[0]) {
                                    icons[0] = Icons.keyboard_arrow_down;
                                  } else {
                                    icons[0] = Icons.keyboard_arrow_up;
                                  }
                                  isVisible[0] = !isVisible[0];
                                });
                              },
                            ),
                            Visibility(
                              visible: isVisible[0],
                              child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Expanded(
                                  child: Text(
                                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry'
                                    ' standard dummy text ever since the 1500s.',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            RawMaterialButton(
                              constraints: BoxConstraints(),
                              child: Card(
                                elevation: 5.0,
                                color: Colors.blue,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: ListTile(
                                  trailing: Icon(
                                    icons[1],
                                    color: Colors.white,
                                  ),
                                  title: Text(
                                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry?',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 17.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              onPressed: () {
                                setState(() {
                                  backgroundColor = Colors.blue;
                                  if (isVisible[1]) {
                                    icons[1] = Icons.keyboard_arrow_down;
                                  } else {
                                    icons[1] = Icons.keyboard_arrow_up;
                                  }
                                  isVisible[1] = !isVisible[1];
                                });
                              },
                            ),
                            Visibility(
                              visible: isVisible[1],
                              child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Expanded(
                                  child: Text(
                                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry'
                                    ' standard dummy text ever since the 1500s.',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            RawMaterialButton(
                              constraints: BoxConstraints(),
                              child: Card(
                                elevation: 5.0,
                                color: Colors.redAccent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: ListTile(
                                  trailing: Icon(
                                    icons[2],
                                    color: Colors.white,
                                  ),
                                  title: Text(
                                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry?',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 17.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              onPressed: () {
                                setState(() {
                                  backgroundColor = Colors.redAccent;
                                  if (isVisible[2]) {
                                    icons[2] = Icons.keyboard_arrow_down;
                                  } else {
                                    icons[2] = Icons.keyboard_arrow_up;
                                  }
                                  isVisible[2] = !isVisible[2];
                                });
                              },
                            ),
                            Visibility(
                              visible: isVisible[2],
                              child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Expanded(
                                  child: Text(
                                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry'
                                    ' standard dummy text ever since the 1500s.',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            RawMaterialButton(
                              constraints: BoxConstraints(),
                              child: Card(
                                elevation: 5.0,
                                color: Colors.green,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: ListTile(
                                  trailing: Icon(
                                    icons[3],
                                    color: Colors.white,
                                  ),
                                  title: Text(
                                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry?',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 17.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              onPressed: () {
                                setState(() {
                                  backgroundColor = Colors.green;
                                  if (isVisible[3]) {
                                    icons[3] = Icons.keyboard_arrow_down;
                                  } else {
                                    icons[3] = Icons.keyboard_arrow_up;
                                  }
                                  isVisible[3] = !isVisible[3];
                                });
                              },
                            ),
                            Visibility(
                              visible: isVisible[3],
                              child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Expanded(
                                  child: Text(
                                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry'
                                    ' standard dummy text ever since the 1500s.',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            RawMaterialButton(
                              constraints: BoxConstraints(),
                              child: Card(
                                elevation: 5.0,
                                color: Colors.orange,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: ListTile(
                                  trailing: Icon(
                                    icons[4],
                                    color: Colors.white,
                                  ),
                                  title: Text(
                                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry?',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 17.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              onPressed: () {
                                setState(() {
                                  backgroundColor = Colors.orange;
                                  if (isVisible[4]) {
                                    icons[4] = Icons.keyboard_arrow_down;
                                  } else {
                                    icons[4] = Icons.keyboard_arrow_up;
                                  }
                                  isVisible[4] = !isVisible[4];
                                });
                              },
                            ),
                            Visibility(
                              visible: isVisible[4],
                              child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Expanded(
                                  child: Text(
                                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry'
                                    ' standard dummy text ever since the 1500s.',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
