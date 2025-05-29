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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Tutorial 42 Padding and Margin'),
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(

        margin: EdgeInsets.all(90),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.greenAccent,
              spreadRadius: 2,
              blurRadius: 8,
              offset: Offset(4, 4),
            ),
          ],



        ),
        child: Padding(
          padding:EdgeInsets.all(7),
          child: Text('Subscribe Us',
            style: TextStyle(fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ),
      ),

      // Padding Example
      //   Padding(
      //   padding: EdgeInsets.all(15),
      //    padding: EdgeInsets.only(top: 10,left: 34),
      //   child: Text('This is Tutorial 42 ',
      //     style: TextStyle(fontSize: 25,
      //         fontWeight: FontWeight.bold,
      //         color: Colors.green),
      //   ),
    );
  }
}
