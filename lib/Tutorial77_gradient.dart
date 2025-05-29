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
      body:Column(
        children: [
          Container(
              height: 300,
              decoration:BoxDecoration(
                  gradient:LinearGradient(
                      colors:[
                        Color(0xffffecd2),Color(0xfffcb69f)
                      ],
                      begin:FractionalOffset(0.0,1.0),
                      end:FractionalOffset(0.0,0.0),
                      stops:[1.0,0.0]
                  )
              )
          ),
          Container(
            height: 200,
            decoration:BoxDecoration(
                gradient:RadialGradient(
                    colors: [
                      Color(0xfffd9702),Color(0x0fffca01)
                    ],
                    center:Alignment.topLeft,
                    stops:[0.0,1.0]
                )
            ),

          )
        ],
      ),
    );
  }
}
