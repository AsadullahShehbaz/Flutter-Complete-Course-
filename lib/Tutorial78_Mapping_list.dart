import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

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
  State<MyHomePage> createState() => _MyHomePageState3();
}
class _MyHomePageState2 extends State<MyHomePage>{
  var arrNames = [
    'Ahmed','Arsal','Abdullah','Hamza',
    'Faheem','Anas'];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title:Text('Lec 75 ListWheelScrollView'),
      ),
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children:arrNames.map(
                  (e)=>Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration:BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(22)
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(e),
                    ),
                  ),
                ),
              )).toList(),
        ),
      ),
    );
  }
}
class _MyHomePageState3 extends State<MyHomePage>{
  var arrData = [
    {
      'name':'Arsal',
      'age':10,
      'Domain':'AI Developer'
    },
    {
      'name':'Hamza',
      'age':5,
      'Domain':'Software Testing'
    },
    {
      'name':'Abdullah',
      'age':12,
      'Domain':'Data Science'
    },
    {
      'name':'Ahmed',
      'age':7,
      'Domain':'MERN Developer'
    }
  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title:Text('78 Mapping Lists to Widget'),
      ),
      body:ListView(
        children:arrData.map((e)=>ListTile(
          leading: Icon(Icons.account_circle),
          title:Text(e['name'].toString()),
          subtitle: Text(e['Domain'].toString()),
          trailing:CircleAvatar(
              radius:20,
              backgroundColor:Colors.greenAccent,
              child: Text(e['age'].toString())),
        )).toList(),
      ),
    );
  }
}
