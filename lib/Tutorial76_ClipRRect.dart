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
        child: Center(
            child:ClipRRect(
              // borderRadius:BorderRadius.all(Radius.circular(22)),
              // borderRadius:BorderRadius.circular(22),
              // borderRadius:BorderRadius.all(Radius.elliptical(21,41)),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(22),
                bottomRight:Radius.circular(55)
              ),
              child: Container(
                // Radius can also be used in images with ClipRRect Widget
                  color:Colors.blue,
                  width:400,
                  height:400,
                  child: Image.asset(
                    'assets/images/asadullahname.png',
                    width:400,
                    height:300,
                    fit:BoxFit.fill,),
              ),
            )
        ),
      ),
    );
  }
}
