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
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            color: Colors.green,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
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
  TextStyle myTextStyle15() {
    return const TextStyle(
      fontSize: 15,
      color: Colors.purple,
      fontWeight: FontWeight.w500,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(
        child: Column(
          children: [
            Text(
              'Abdullah',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            Text(
              'Ahmed',
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .copyWith(color: Colors.blue),
            ),
            Text(
              'Ali',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            Text(
              'Ali Hamza',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            Text(
              'Awais',
              style: myTextStyle15(),
            ),
          ],
        ),
      ),
    );
  }
}
