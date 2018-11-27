import 'package:flutter/material.dart';

import './dog_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('The Dog List'),
        ),
        body: DogManager('Sammy the Samoyed'),
      ),
    );
  }
}
