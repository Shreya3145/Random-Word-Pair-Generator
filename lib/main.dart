import 'package:flutter/material.dart';
import 'words.dart';

void main() => runApp(MyApp()); //root widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: RandomWords());
  }
}
