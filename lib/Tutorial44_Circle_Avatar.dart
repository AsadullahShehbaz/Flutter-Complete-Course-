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
      home: const MyHomePage(title: 'Tutorial 43 ListTyle'),
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

    var arrNames = ['Muhammad Abdullah','Ahmed Asadullah','Safeer Ul Deen ','Ahmed Abdullah',
      'Muhammad Awais','Hafiz Qasim','Muhammad Hamza'];
    var arrNumber = ['Happiness is the key to success',
      'The expert in anything was once a beginner.',
      'Push yourself, because no one else is going to do it for you.',
      'Difficult roads often lead to beautiful destinations.',
      'Your only limit is your mind',
      'Do what you can, with what you have, where you are.',
      'Dream big, work hard, stay focused, and surround yourself with good people'];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Center(
          child: CircleAvatar(
            child: Container(
              width: 60,
              height: 60,
              child: Column(
                children: [
                  Container(
                      width: 30,
                      height: 30,
                      child: Image.asset('assets/images/pakistan.jpeg')
                  ),
                  Text('Name')
                ],
              ),
            ),
            backgroundColor: Colors.green,
            maxRadius: 60,
          ),

          // -----------To Print Text in circular fashion------------
          // child: CircleAvatar(
          //   child: Text('Name',style: TextStyle(color: Colors.green,
          //   fontSize: 20,fontWeight: FontWeight.bold),),
          //   radius: 50,
          //   backgroundColor: Colors.lightGreenAccent,
          // ),
          // ------------To Use image in circular fashion------------
          // child: CircleAvatar(
          //   backgroundImage: AssetImage('assets/images/khilafat_usmania.jpeg'),
          //   backgroundColor: Colors.lightGreenAccent,
          // ),
        )
    );
  }
}
