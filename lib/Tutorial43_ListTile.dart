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
        body: Container(
            decoration: BoxDecoration(
              color: Colors.greenAccent, // Background color
              borderRadius: BorderRadius.circular(10), // Rounded corners
            ),
            child: ListView.separated(itemBuilder: (context,index){
              return ListTile(
                tileColor: Colors.greenAccent,
                leading: Text('${index+1}'),
                title: Text(arrNames[index]),
                subtitle: Text(arrNumber[index]),
                trailing: Icon(Icons.add_chart_rounded),
                onTap: () {
                  print("Tile clicked!"); // Action on tap
                },
              );
            },
                separatorBuilder: (context,index){
                  return Divider(height: 10,thickness: 1,);
                }, itemCount: arrNames.length)
        )
    );
  }
}
