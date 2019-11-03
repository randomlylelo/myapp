import 'package:flutter/material.dart';

void main()
{
  // in material.dart
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  //YT 2:29:00
  Widget build(BuildContext context)
  {
    return MaterialApp(home: Text('Hello'),);
  }
}