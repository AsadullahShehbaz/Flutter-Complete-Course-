import 'package:flutter/material.dart';
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
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  State<StatefulWidget> createState(){
    return MyHomeState();
  }
}
class MyHomeState extends State<MyHomePage> {

  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();
  var result = "";
  Widget build (BuildContext context ){
    return Scaffold(
      appBar: AppBar(title: Text('Statefull Widget Tutorial 64'),),
      body: Container(color:Colors.blue,
        child: ConstrainedBox(
          constraints: BoxConstraints(maxHeight: 100,maxWidth: 200),
          child: Text('This is the Channel of Ali Asadullah Data Scientist',style: TextStyle(fontSize: 30,overflow: TextOverflow.ellipsis),),

        ),
      ),
    );
  }
}