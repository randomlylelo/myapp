import 'package:flutter/material.dart';

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
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp>{
  var questionIndex = 0;

  // A function but is called method
  void answerQuestion() {
    setState(() {
      questionIndex++;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(children: <Widget>[
          Text(questions[questionIndex]),
          RaisedButton(
            child: Text('Answer 1'),
            onPressed: answerQuestion, // Passing the refrence to onPressed bc onPressed wants function not return value of the function.
          ),
          RaisedButton(
            child: Text('Answer 2'),
            onPressed: () => print('Shorthand for function, this is also called a anonymous function (function with no name)'),
          ),
          RaisedButton(
            child: Text('Answer 3'),
            onPressed: (){
              // This is used for multi line functions, another anonymous function bc it doesn't have a name.
              print('Another shorthand way :)');
            },
          ),
        ]),
      ),
    );
  }
}
