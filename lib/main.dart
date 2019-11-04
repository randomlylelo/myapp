import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

/* 
void main(){
  // in material.dart
  runApp(MyApp());
}
*/
//same as
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

// _ - turns public class to private
class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  // A function but is called method
  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': ['Black', 'Red', 'Green', 'White'],
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
      },
      {
        'questionText': 'What\'s your favorite class?',
        'answers': ['COP', 'AST', 'ENC', 'MAC'],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: <Widget>[
            Question(
              questions[_questionIndex]['questionText'],
            ),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList(),

            // Answer(_answerQuestion),
            // Answer(_answerQuestion),
            // Answer(_answerQuestion),
            // Ctrl + K + C to comment, Ctrl + K + U to uncomment
            // RaisedButton(
            //   child: Text('Answer 1'),
            //   onPressed:
            //       _answerQuestion, // Passing the refrence to onPressed bc onPressed wants function not return value of the function.
            // ),
            // RaisedButton(
            //   child: Text('Answer 2'),
            //   onPressed: () => print(
            //       'Shorthand for function, this is also called a anonymous function (function with no name)'),
            // ),
            // RaisedButton(
            //   child: Text('Answer 3'),
            //   onPressed: () {
            //     // This is used for multi line functions, another anonymous function bc it doesn't have a name.
            //     print('Another shorthand way :)');
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
