import 'package:flutter/material.dart';

import './dogs.dart';

class DogManager extends StatefulWidget {
  final String startingDog;

  DogManager(this.startingDog);

  @override
  State<StatefulWidget> createState() {
    return _DogManagerState();
  }
}

class _DogManagerState extends State<DogManager> {
  List<String> _dogs = [];

  @override
    void initState() {
      _dogs.add(widget.startingDog);
      super.initState();
    }

  @override
  Widget build(BuildContext context) {
    return Column(children: [Container(
      margin: EdgeInsets.all(10.0),
      child: RaisedButton(
          onPressed: () {
            setState(() {
              _dogs.add('Ronnie the Rhodesian Ridgeback');
              print(_dogs);
            });
          },
          child: Text('Add Dog')),
    ),
    Dogs(_dogs)
    ],);
  }
}
