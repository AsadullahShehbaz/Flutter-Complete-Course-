import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
      appBar: AppBar(title:Text('Tutorial 62 Positioned Widget'),
        actions: [
          IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.search))],),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.orange,
        child: Stack(
          children: [
            Positioned(
              bottom: 60,
              right: 30,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.greenAccent,
              ),
            )
          ],
        ),
      ),
    );
  }
}
// Sized.Shrink (Constrained Box Child to use shrink and expand feature)
// Sized.Expand , Sized.square
