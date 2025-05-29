import 'package:flutter/material.dart';
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
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  State<StatefulWidget> createState(){
    return MyHomeState();
  }
}
class MyHomeState extends State<MyHomePage> {

  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();
  var result = "";
  Widget build (BuildContext context ){
    return Scaffold(
      appBar: AppBar(title: Text('Statefull Widget Tutorial 64'),),
      body: Container(color:Colors.blue,
        child: Center(
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              TextField(
                keyboardType:TextInputType.number,
                controller: no1Controller,
              ),
              TextField(
                keyboardType:TextInputType.number,
                controller: no2Controller,
              ),
              Padding(
                padding: const EdgeInsets.all(21.0),
                child: Row(
                  mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(onPressed: (){
                      var no1 = int.parse(no1Controller.text.toString());
                      var no2 = int.parse(no2Controller.text.toString());
                      var sum = no1 + no2;

                      result= "The Sum of $no1 and $no2 is $sum";
                      setState(() {
                      });
                    }, child: Text('Addition')),
                    ElevatedButton(onPressed: (){
                      var no1 = int.parse(no1Controller.text.toString());
                      var no2 = int.parse(no2Controller.text.toString());
                      var sum = no1 - no2;

                      result= "The difference of $no1 and $no2 is $sum";
                      setState(() {
                      });
                    }, child: Text('Subtract')),
                    ElevatedButton(onPressed: (){
                      var no1 = int.parse(no1Controller.text.toString());
                      var no2 = int.parse(no2Controller.text.toString());
                      var sum = no1 * no2;

                      result= "The Multiply of $no1 and $no2 is ${sum.toStringAsFixed(2)}";
                      setState(() {
                      });
                    }, child: Text('Multiply')),
                    ElevatedButton(onPressed: (){
                      var no1 = int.parse(no1Controller.text.toString());
                      var no2 = int.parse(no2Controller.text.toString());
                      var sum = no1/no2;

                      result= "The Division of $no1 and $no2 is $sum";
                      setState(() {
                      });
                    }, child: Text('Divide')),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(result,style: TextStyle(fontSize: 25,color: Colors.white),),)
            ],
          ),
        ),),
    );
  }
}