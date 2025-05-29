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
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Wrap
            (
              direction: Axis.horizontal,
              alignment: WrapAlignment.center,
              spacing: 11,
              runSpacing: 11,
              children: [
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.orange,
                ),
                Positioned(
                  left: 10,
                  right: 10,
                  top: 10,
                  bottom: 10,
                  child: Container(
                    width: 160,
                    height: 160,
                    color: Colors.green,
                  ),
                ),
                Container(
                  width: 120,
                  height: 120,
                  color: Colors.blue,
                ),
              ]
          ),
        )
    );
  }
}

