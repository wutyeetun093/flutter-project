import 'package:flutter/material.dart';

class DogName extends StatelessWidget{
  final String name;

  const DogName(this.name);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DecoratedBox(
      decoration: BoxDecoration(color: Colors.lightBlue),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(name),
      ),
    );
  }
}