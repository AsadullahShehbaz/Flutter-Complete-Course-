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
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
          fontFamily: 'Poppins',
          textTheme: TextTheme(
              headlineLarge: TextStyle(color: Colors.green,fontSize: 25,fontWeight: FontWeight.bold)
          )
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
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Center(
          child: Card(
            shadowColor: Colors.lightGreenAccent,
            elevation: 20,
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text('Welcome to Our App',
                      style:TextStyle(
                          fontSize: 50,
                          color: Colors.green,
                          fontWeight: FontWeight.bold
                      )
                      ,textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20,),
                    Text('Discover amazing features and tools designed to make your life easier. '
                        'Join our community and start exploring today!',
                      style: TextStyle(fontSize: 16,
                          fontWeight: FontWeight.w400),
                      textAlign: TextAlign.center,)
                  ],
                )
            ),

          ),

        )
    );
  }
}
