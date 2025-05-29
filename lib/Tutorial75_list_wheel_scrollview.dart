import 'package:flutter/material.dart';
void main(){
  runApp(myApp());
}
class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title:'List Wheel Scroll View',
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget{
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage>{
  var arrIndex = [1,2,3,4,5,6,7,8,9,10];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title:Text('Lec 75 ListWheelScrollView'),
      ),
      body:Center(
        child: ListWheelScrollView(
          itemExtent:200,
          children: arrIndex.map((value)=>Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                decoration:BoxDecoration(
                    borderRadius:BorderRadius.circular(24),
                    color:Colors.blue),
                width:double.infinity,
                color:Colors.blue,
                child:Center(child: Text('$value',style:TextStyle(fontSize: 25,color:Colors.white)))),
          )).toList(),
        ),
      ),
    );
  }
}
