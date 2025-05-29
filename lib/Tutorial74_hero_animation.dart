import 'dart:async';
import 'package:flutter/material.dart';

import 'detail_page.dart';

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
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Foo Animation"),
        ),
        body: Container(
            color: Colors.green,
            child:Center(
                child:InkWell(
                  onTap:(){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder:(context)=>(DetailPage())
                        ));
                  },
                  child: Hero(
                    tag: 'Name',
                    child: Image.asset("assets/images/asadullahname.png",
                      width: 200,height: 200,),
                  ),
                )
            ))
    );
  }
}
