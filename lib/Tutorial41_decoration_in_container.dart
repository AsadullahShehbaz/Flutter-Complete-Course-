import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Tutorial 41 Flutter App'),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.green,
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(21)),
              // borderRadius: BorderRadius.only(topLeft: Radius.circular(21),bottomRight: Radius.circular(21))
              // borderRadius: BorderRadius.circular(11)
              border: Border.all(
                width:2,
                color: Colors.lightGreenAccent,
                ),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 22,
                      spreadRadius: 22
                      // color:Colors.grey,
                )
                ]
            ),
          ),
        )
    );
  }
}
