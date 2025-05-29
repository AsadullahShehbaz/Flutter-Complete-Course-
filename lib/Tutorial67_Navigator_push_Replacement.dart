import 'package:flutter/material.dart';
import 'Splash_Screen.dart';
void main(){
  return runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build ( BuildContext context ){
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Tutorial 64 State Ful Widget',
      theme: ThemeData(
          primarySwatch: Colors.blue
      ),
      home:SplashScreen(),
    );
  }
}
class MyHomePage extends StatelessWidget {

  Widget build (BuildContext context ){
    return Scaffold(
      appBar: AppBar(title: Text('Statefull Widget Tutorial 64'),),
      body: Container(
        color:Colors.blue,
        child: ConstrainedBox(
          constraints: BoxConstraints(maxHeight: 400,maxWidth: 400),
          child: Text('This is the Channel of Ali Asadullah Data Scientist',
            style: TextStyle(
                fontSize: 30,
                overflow: TextOverflow.ellipsis
            ),),
        ),
      ),
    );
  }
}