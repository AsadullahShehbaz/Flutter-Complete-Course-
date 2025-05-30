import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mobile_app_development/LoginPage.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'main.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {

  static const String KEYLOGIN = "login";
  @override
  void initState() {
    super.initState();
  }
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
  }
  void whereToGo()async{
    var sharedPref = await SharedPreferences.getInstance();
    var isLoggedIn = sharedPref.getBool(KEYLOGIN);

    if(isLoggedIn!=null){
      if(isLoggedIn){
        Timer(Duration(seconds: 2),(){
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder:(context)=> MyHomePage82(),
              )
          );
        }
        );
      } else{
        Timer(Duration(seconds: 2),(){
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder:(context)=> LoginPage(),
              )
          );
        }
        );
      }
    }else{
      Timer(Duration(seconds: 2),(){
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder:(context)=> LoginPage(),
            )
        );
      }
      );    }
  }
}  // SplashScreen