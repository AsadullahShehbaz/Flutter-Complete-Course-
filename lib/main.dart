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
class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{

  late Animation animation;
  late AnimationController animationController;
  var array = [150,200,250,300,350];
  @override
  void initState(){
    super.initState();
    animationController = AnimationController(vsync:this,duration:Duration(seconds:4),lowerBound:0.5);
    //animation = Tween(begin:0.0,end:1.0).animate(animationController);

    animationController.addListener((){
      setState((){});
    });
    animationController.forward();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title:Text('Lec 80 Ripple Animation'),
      ),
      body:Center(
        child: Stack(
          alignment:Alignment.center,
          children: [
            BuildMyContainer(array[0]),
            BuildMyContainer(array[1]),
            BuildMyContainer(array[2]),
            BuildMyContainer(array[3]),
            BuildMyContainer(array[4]),
            Icon(Icons.add_call,color: Colors.orangeAccent,size: 40,)

          ],
        ),
      ),
    );
  }
  Widget BuildMyContainer(radius){
    return Container(
      width:radius*animationController.value,
      height:radius*animationController.value,
      decoration:BoxDecoration(
          shape:BoxShape.circle,
          color:Colors.blue.withOpacity(1.0 - animationController.value)
      ),
    );
  }
}
class _MyHomePageState1 extends State<MyHomePage> with SingleTickerProviderStateMixin{

  late Animation animation;
  late AnimationController animationController;

  var listRadius = [150.0,200.0,250.0,300.0,350.0];
  @override
  void initState(){
    super.initState();
    animationController = AnimationController(vsync:this,duration:Duration(seconds:4));
    animation = Tween(begin:0.0,end:1.0).animate(animationController);

    animation.addListener((){
      setState((){});
    });
    animationController.forward();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title:Text('Lec 80 Ripple Animation'),
      ),
      body:Center(
        child: Stack(
          alignment:Alignment.center,
          children: listRadius.map((radius)=>Container(
            width:radius*animation.value,
            height:radius*animation.value,
            decoration:BoxDecoration(
              shape:BoxShape.circle,
              color:Colors.blue.withOpacity(1.0 - animation.value)
            ),
          )).toList(),
        ),
      ),
    );
  }
}

class _MyHomePageState2 extends State<MyHomePage> with SingleTickerProviderStateMixin{

  late Animation animation;
  late AnimationController animationController;

  var listRadius = [150.0,200.0,250.0,300.0,350.0];
  @override
  void initState(){
    super.initState();
    animationController = AnimationController(vsync:this,duration:Duration(seconds:4),lowerBound:0.5);
    //animation = Tween(begin:0.0,end:1.0).animate(animationController);

    animationController.addListener((){
      setState((){});
    });
    animationController.forward();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title:Text('Lec 80 Ripple Animation'),
      ),
      body:Center(
        child: Stack(
          alignment:Alignment.center,
          children: listRadius.map((radius)=>Container(
            width:radius*animationController.value,
            height:radius*animationController.value,
            decoration:BoxDecoration(
                shape:BoxShape.circle,
                color:Colors.blue.withOpacity(1.0 - animationController.value)
            ),
          )).toList(),
        ),
      ),
    );
  }
}