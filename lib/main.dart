import 'package:flutter/material.dart';
import 'logic.dart';

Logic logic = Logic();

void main() => runApp(GiannaQuotes());

class GiannaQuotes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text(
            'Quotes by Gianna Schiavo',
            style: TextStyle(color: Colors.black, fontFamily: 'Concert One', fontSize: 30),
          ),
        ),
        backgroundColor: Colors.purple[200],
        body: SafeArea(
          child: QuotePage(),
        ),
      ),
    );
  }
}

class QuotePage extends StatefulWidget {
  @override
  _QuotePageState createState() => _QuotePageState();
}

class _QuotePageState extends State<QuotePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        CircleAvatar(
          radius: 200.0,
          backgroundColor: Colors.white,
          backgroundImage: AssetImage('images/gianna.jpg'),
        ),
        SizedBox(height: 50),
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.white),
          margin: EdgeInsets.symmetric(horizontal: 50),
          width: 100,
          height: 120,
          child: Center(
            child: Text(
              logic.getQuote(),
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 50),
          width: 20,
          height: 50,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.greenAccent[100]),
          child: FlatButton(
            onPressed: () {
              setState(() {
                logic.nextQuote();
              });
            },
            child: Text(
              'Next',
              style: TextStyle(
                fontSize: 40.0,
                fontFamily: 'Concert One',
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
