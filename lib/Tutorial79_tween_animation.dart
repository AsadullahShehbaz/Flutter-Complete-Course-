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
  State<MyHomePage> createState() => _MyHomePageState2();
}
class _MyHomePageState2 extends State<MyHomePage> with SingleTickerProviderStateMixin{
  late Animation animation;
  late Animation colorAnimation;
  late AnimationController animationController;

  late Animation textAnimation;

  @override
  void initState(){
    super.initState();
    animationController = AnimationController(vsync:this,duration:Duration(seconds:4));
    animation = Tween(begin:0.0,end:200.0).animate(animationController);
    textAnimation = Tween(begin: 20.0,end: 30.0).animate(animationController);
    colorAnimation = ColorTween(
        begin:Colors.orangeAccent,
        end:Colors.lightBlueAccent).animate(animationController);
    animationController.addListener((){
      setState((){});
    });

    animationController.forward();
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title:Text('Lec 79 Tween Animation'),
      ),
      body:Column(
          crossAxisAlignment:CrossAxisAlignment.stretch,
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            TweenAnimationBuilder(
                tween: Tween(begin: 1.0,end: 200.0),
                duration: Duration(seconds:4),
                builder: (BuildContext context,value,MyWidget)=>Icon(
                    Icons.account_balance,
                    color:Colors.blue,
                    size:value)),
            Container(
              width:animation.value,
              height:animation.value,
              color: colorAnimation.value,
              child: Center(child: Text('Flutter Tween Animation',style:TextStyle(fontSize:textAnimation.value))),
            ),

          ]
      ),
    );
  }
}