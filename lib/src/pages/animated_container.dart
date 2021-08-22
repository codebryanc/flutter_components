
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Esto se crea con el comando : Shortcut :
// => stful

class AnimatedContainerPage extends StatefulWidget {
  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double _width = 150.0;
  double _height = 250.0;
  Color _color = Colors.pink;

  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text('Animated container'),
      ),
      body: Center(
        child: Container(
          width: _width,
          height: _height,
          decoration: BoxDecoration(color: _color, borderRadius: _borderRadius),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.electrical_services_rounded),
        onPressed: () {
          _width = _width + 40;
          _height = _height + 20;
          _color = Colors.blue;
          
          print('object');
        },
      ),
    );
  }
}