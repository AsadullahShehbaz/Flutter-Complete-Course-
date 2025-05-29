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
      appBar: AppBar(title:Text('Font Awesome Demo'),
        actions: [
          IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.search))],),
      body: Center(
        child: Column(
          // mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Icon(
              Icons.play_circle_rounded,
              color: Colors.red,
            ),
            SizedBox(height: 50,),
            FaIcon(FontAwesomeIcons.apple,color: Colors.red,
              shadows: [Shadow(blurRadius: 2,color:Colors.red,offset: Offset(2, 2))],),
            Text('Task Completed')
          ],
        ),
      ),
    );
  }
}
// Sized.Shrink (Constrained Box Child to use shrink and expand feature)
// Sized.Expand , Sized.square
