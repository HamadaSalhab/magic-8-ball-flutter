import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        color: Colors.blue,
        home: ballPage(),
      ),
    );

class ballPage extends StatelessWidget {
  const ballPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        title: Center(
          child: Text(
            'Ask Me Anything',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Answers(),
    );
  }
}

class Answers extends StatefulWidget {
  const Answers({Key key}) : super(key: key);

  @override
  _AnswersState createState() => _AnswersState();
}

class _AnswersState extends State<Answers> {
  int x = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[300],
      // ignore: deprecated_member_use
      child: Center(
        child: FlatButton(
          onPressed: () {
            setState(() {
              x = Random().nextInt(5) + 1;
            });
          },
          child: Image.asset('images/ball$x.png'),
        ),
      ),
    );
  }
}
