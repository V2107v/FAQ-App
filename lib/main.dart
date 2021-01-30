import 'package:flutter/material.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color backgroundColor = Colors.black;

  Padding makeUI({Color color, String question, String answer}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: ExpansionTileCard(
        expandedColor: color,
        baseColor: color,
        title: Text(
          question,
          style: TextStyle(
            color: Colors.white,
            fontSize: 17.0,
          ),
        ),
        children: <Widget>[
          Divider(
            thickness: 0.5,
            height: 0.5,
            color: Colors.black54,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 12.0,
              ),
              child: Text(
                answer,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(flex: 1, child: Image.asset('images/faq.png')),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  makeUI(
                      color: Colors.purple,
                      question:
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry?',
                      answer:
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem'
                          'Ipsum has been the industry standard dummy text ever since the 1500s.'),
                  makeUI(
                      color: Colors.redAccent,
                      question:
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry?',
                      answer:
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem'
                          'Ipsum has been the industry standard dummy text ever since the 1500s.'),
                  makeUI(
                      color: Colors.indigoAccent,
                      question:
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry?',
                      answer:
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem'
                          'Ipsum has been the industry standard dummy text ever since the 1500s.'),
                  makeUI(
                      color: Colors.orange,
                      question:
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry?',
                      answer:
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem'
                          'Ipsum has been the industry standard dummy text ever since the 1500s.'),
                  makeUI(
                      color: Colors.green,
                      question:
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry?',
                      answer:
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem'
                          'Ipsum has been the industry standard dummy text ever since the 1500s.'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
/*another method*/
/**class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color backgroundColor = Colors.grey.shade900;

  List<bool> isVisible = [false, false, false, false, false];

  List<IconData> icons = [
    Icons.keyboard_arrow_down,
    Icons.keyboard_arrow_down,
    Icons.keyboard_arrow_down,
    Icons.keyboard_arrow_down,
    Icons.keyboard_arrow_down,
  ];

  Column quesAndAnswer(
      {int index, Color color, String question, String answer}) {
    return Column(
      children: <Widget>[
        RawMaterialButton(
          constraints: BoxConstraints(),
          child: Card(
            elevation: 5.0,
            color: color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            child: ListTile(
              trailing: Icon(
                icons[index],
                color: Colors.white,
              ),
              title: Text(
                '$question',
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
              backgroundColor = color;
              if (isVisible[index]) {
                icons[index] = Icons.keyboard_arrow_down;
              } else {
                icons[index] = Icons.keyboard_arrow_up;
              }
              isVisible[index] = !isVisible[index];
            });
          },
        ),
        Visibility(
          visible: isVisible[index],
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              '$answer',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }

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
                        quesAndAnswer(
                            index: 0,
                            color: Colors.purple,
                            question:
                                'Lorem Ipsum is simply dummy text of the printing and typesetting industry?',
                            answer:
                                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry'
                                ' standard dummy text ever since the 1500s.'),
                        quesAndAnswer(
                            index: 1,
                            color: Colors.redAccent,
                            question:
                                'Lorem Ipsum is simply dummy text of the printing and typesetting industry?',
                            answer:
                                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry'
                                ' standard dummy text ever since the 1500s.'),
                        quesAndAnswer(
                            index: 2,
                            color: Colors.blue,
                            question:
                                'Lorem Ipsum is simply dummy text of the printing and typesetting industry?',
                            answer:
                                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry'
                                ' standard dummy text ever since the 1500s.'),
                        quesAndAnswer(
                            index: 3,
                            color: Colors.green,
                            question:
                                'Lorem Ipsum is simply dummy text of the printing and typesetting industry?',
                            answer:
                                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry'
                                ' standard dummy text ever since the 1500s.'),
                        quesAndAnswer(
                            index: 4,
                            color: Colors.orange,
                            question:
                                'Lorem Ipsum is simply dummy text of the printing and typesetting industry?',
                            answer:
                                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry'
                                ' standard dummy text ever since the 1500s.'),
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
} **/
