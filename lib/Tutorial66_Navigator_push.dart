import 'package:flutter/material.dart';
import 'package:tutorial_34_rows_and_columns_widget/LoginPage.dart';
void main(){
  return runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build ( BuildContext context ){
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Tutorial 64 State Ful Widget',
      theme: ThemeData(
          primarySwatch: Colors.blue
      ),
      home:MyHomePage66(),
    );
  }
}

class MyHomePage66 extends StatelessWidget {

  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();
  var result = "";
  Widget build (BuildContext context ){
    return Scaffold(
      appBar: AppBar(title: Text('Statefull Widget Tutorial 64'),),
      body: Column(
        children: [ConstrainedBox(
          constraints: BoxConstraints(maxHeight: 400,maxWidth: 400),
          child: Text('This is the Channel of Ali Asadullah Data Scientist',style: TextStyle(fontSize: 30,overflow: TextOverflow.ellipsis),),

        ),
        ElevatedButton(onPressed: (){
                Navigator.push(
                context,
                MaterialPageRoute(
                builder: (context)=>Loginpage(),
                )
                );
                }, child: Text('Switch to Login ')
        ),]
      ),
    );
  }
}