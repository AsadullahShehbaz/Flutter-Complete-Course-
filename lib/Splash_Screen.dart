import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tutorial_34_rows_and_columns_widget/Tutorial40_main_dart_uses.dart';
class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  // void initState() {
  //   super.initState();
  //   Timer(Duration(seconds: 2),(){
  //     Navigator.pushReplacement(
  //         context,
  //         MaterialPageRoute(
  //             builder:(context)=> DashboardScreen(),
  //         )
  //     );
  //   }
  //   );
  // }
  @override
  Widget build (BuildContext context){
    return Scaffold(
      body: Container(
        color:Colors.blue,
        child: Center(
          child: ElevatedButton(onPressed: ()
              {
              },child: Text('My Screen',style:TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Colors.white),
          )
          ),
        ),
      ),
    );
  } }  // SplashScreen