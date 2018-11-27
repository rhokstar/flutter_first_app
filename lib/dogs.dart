import 'package:flutter/material.dart';

class Dogs extends StatelessWidget {
  final List<String> dogs;
  
  Dogs(this.dogs);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: dogs
          .map(
            (element) => Card(
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/sammy.jpg'),
                      Text(element)
                    ],
                  ),
                ),
          )
          .toList(),
    );
  }
}
