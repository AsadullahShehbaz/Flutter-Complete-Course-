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
        body: Wrap(
          direction: Axis.vertical,
          children: [
            SizedBox.square(
              dimension: 100,
              child:ElevatedButton(
                onPressed : (){
                },child:Text(' Tutorial 58 '),
              ),
            ),
            SizedBox(height: 20,),
            SizedBox.square(
              dimension: 100,
              child:ElevatedButton(
                onPressed : (){
                },child:Text(' Tutorial 58 '),
              ),
            ),

            SizedBox.square(
              dimension: 100,
              child:ElevatedButton(
                onPressed : (){
                },child:Text(' Tutorial 58 '),
              ),
            )],
        )
    );
  }
}
// Sized.Shrink (Constrained Box Child to use shrink and expand feature)
// Sized.Expand , Sized.square
