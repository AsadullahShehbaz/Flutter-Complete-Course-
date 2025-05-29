import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
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
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
          fontFamily: 'Poppins',
          textTheme: TextTheme(
              headlineLarge: TextStyle(color: Colors.green,fontSize: 25,fontWeight: FontWeight.bold)
          )
      ),
      home: const MyHomePage(title: 'User Input'),
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

  @override
  Widget build(BuildContext context) {
    var time = DateTime.now();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Center(child: Container(
          width: 200,
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Current Month : ${time.month}'),
              Text('Current Day : ${time.day}'),
              Text('Current time : ${time.hour}:${time.minute}:${time.second}'),
              ElevatedButton(onPressed: (){
                setState(() {

                });
              }, child:Text('Current Time') )
            ],
          ),
        ),)
    );
  }
}
