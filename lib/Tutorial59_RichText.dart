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
      // body: Center(
      //   child: RichText(
      //     text: TextSpan(
      //       style: TextStyle(fontSize: 26,color: Colors.green,fontWeight: FontWeight.bold),
      //       children: <TextSpan>[
      //         TextSpan(text: 'Welcome to '),
      //         TextSpan(text: 'Usmania Empire',
      //             style: TextStyle(color: Colors.blue,fontSize: 40)),
      //
      //         TextSpan(text: '           This ',style: TextStyle(color: Colors.black)),
      //         TextSpan(text: ' is',style: TextStyle(color: Colors.red,fontStyle: FontStyle.italic)),
      //         TextSpan(text: ' 20th Century',style: TextStyle(color: Colors.blue,decoration: TextDecoration.underline )),
      //         TextSpan(text: ' Get Help',
      //           style: TextStyle(color: Colors.green),
      //           recognizer: TapGestureRecognizer()..onTap = () {
      //             print('Text clicked!');
      //           },)
      //       ]
      //     ),
      //   ),
      // )
      body: Center(
        child: RichText(text: TextSpan(
            style: TextStyle(fontSize: 30,color: Colors.orangeAccent,fontWeight: FontWeight.bold),
            children: [
              TextSpan(text:'This is',style: TextStyle(fontFamily: 'Poppins')),
              TextSpan(text: ' Tutorial 59 ',style: TextStyle(color: Colors.green))
            ])),
      ),
    );
  }
}
// Sized.Shrink (Constrained Box Child to use shrink and expand feature)
// Sized.Expand , Sized.square
