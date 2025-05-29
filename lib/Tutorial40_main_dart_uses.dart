import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
  return MaterialApp(
    title: 'My First Application',
    debugShowCheckedModeBanner: false ,
    theme: ThemeData(
      primarySwatch: Colors.blue
    ),
    home: DashboardScreen(),
  );
  }
}
class DashboardScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard Screen'),
      ),
      body: Container(
        color: Colors.green,
        child: Text('This is body of my first application in flutter'),
      )
    );
  }
}