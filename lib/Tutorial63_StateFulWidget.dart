import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Stateful Widget Practice',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  State<StatefulWidget> createState() => MyHomeState();
}
class MyHomeState extends State<MyHomePage> {
  var count = 0 ;
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title: Text('Stateful Widget Tutorial 63'),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [

            Text('Count : $count',style:TextStyle(fontSize:34)),
            ElevatedButton(onPressed: (){
              setState((){
                count++;
              });
            }, child: Text('Incremental Count'))
          ],
        ),
      ),
    );
  }
}