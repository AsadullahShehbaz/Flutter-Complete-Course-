import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Snackbar Demo')),
        body: Center(
          child: Builder(
            builder: (BuildContext context) {
              return ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Assalam o Alaikum Congratulations!'),
                      duration: Duration(seconds: 2),
                      behavior: SnackBarBehavior.floating, // For web
                    ),
                  );
                },
                child: Text('Submit '),
              );
            },
          ),
        ),
      ),
    );
  }
}