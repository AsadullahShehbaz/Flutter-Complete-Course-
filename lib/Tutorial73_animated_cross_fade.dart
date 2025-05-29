import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool isFirst = true;
  @override
  void initState(){
    super.initState();

    Timer(Duration(seconds:2),(){
      reload();
    });
  }
  void reload(){
    setState((){
      if(isFirst){
        isFirst = false;
      }else{
        isFirst = true;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Foo Animation"),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[ AnimatedCrossFade(
            duration:Duration(seconds:2),
            firstChild:Container(
                width: 500,
                height: 500,
                color:Colors.blue
            ),
            secondChild:Image.asset("assets/images/asadullahname.png"),
            crossFadeState:isFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            sizeCurve:Curves.fastOutSlowIn,
            firstCurve:Curves.easeInOut,
            secondCurve:Curves.bounceIn,
          ),
            ElevatedButton(onPressed:(){
              reload();
            },child:Text("Show"))
          ]),
    );
  }
}
