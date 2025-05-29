import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('Snackbar Demo')),
      body: Center(
        child: Icon(
          Icons.play_circle_rounded,
          size: 220,
          color: Colors.red,),
      ),
    );
  }
}
// Sized.Shrink (Constrained Box Child to use shrink and expand feature)
// Sized.Expand , Sized.square
