import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  var username;
  SplashScreen(this.username);
  Widget build (BuildContext context){
    return Scaffold(
      body: Center(
        child:Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Text("Welcome $username",style: TextStyle(fontSize: 30),),
            ElevatedButton(onPressed: ()
            {
              Navigator.pop(context);
            }
                , child: Text("Back",style: TextStyle(fontSize: 30),))
          ],
        )
      ),
    );
  }
}