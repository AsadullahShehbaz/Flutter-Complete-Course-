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
    String formatted_time = DateFormat('hh:mm:ss').format(time);
    String formatted_date = DateFormat('yyyy-mm-dd').format(time);
    String dayName = DateFormat('EEEE').format(time);
    String monthName = DateFormat('MMMM').format(time);
    final items = [
      Text('Current time : ${DateFormat('Hms').format(time)}',style: Theme.of(context).textTheme.headlineLarge,),
      Text('Time in AM/PM : ${DateFormat('jms').format(time)}',style: Theme.of(context).textTheme.headlineLarge,),
      Text('Date : ${DateFormat('yMMMMd').format(time)}',style: Theme.of(context).textTheme.headlineLarge,),
      Text('Date : ${DateFormat('yMMMM ').format(time)}',style: Theme.of(context).textTheme.headlineLarge,),
      Text('Formatted Time : $formatted_time',style: Theme.of(context).textTheme.headlineLarge,),
      Text('Formatted Date : $formatted_date',style: Theme.of(context).textTheme.headlineLarge,),
      Text('Day Name : $dayName',style: Theme.of(context).textTheme.headlineLarge,),
      Text('monthName : $monthName',style: Theme.of(context).textTheme.headlineLarge,),
      ElevatedButton(
          onPressed: () { setState(() {}); },
          child: Text('Current Time',style: Theme.of(context).textTheme.headlineLarge,)
      ),
    ];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body:ListView.separated(
          padding: EdgeInsets.all(20),
          itemCount: items.length,
          separatorBuilder: (context, index) => Divider(height: 20,thickness: 2,),
          itemBuilder: (context, index) => items[index],
        )
    );
  }
}
