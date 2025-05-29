import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('Snackbar Demo')),
      body: Container(
        child: Column(
          children: [
            Cat_Item(),
            Cat_List(),
            Cat3(),
            Cat4(),
          ],
        ),
      ),
    );
  }
}

class Cat_Item extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.blue,
        child: ListView.builder(itemBuilder: (context,index)=>Padding(
          padding: const EdgeInsets.all(11.0),
          child: SizedBox(
            width: 100,
            child: CircleAvatar(
              backgroundColor: Colors.green,),
          ),
        ),itemCount: 10,scrollDirection:Axis.horizontal,),
      ),
    );
  }
}

class Cat_List extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Expanded(
      flex: 5,
      child: Container(
        color: Colors.orange,
        child: ListView.builder(itemBuilder: (context,index)=>ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.green,
          ),
          title: Text('Name'),
          subtitle: Text('Mobile No.'),
          trailing: Icon(Icons.delete),
        )
          ,itemCount: 6,scrollDirection: Axis.vertical,),
      ),
    );
  }
}

class Cat3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.grey,
        child: ListView.builder(itemBuilder: (context,index)=>Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 200,
            child: Center(child: Text('Daily Post'),),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11),
                color: Colors.greenAccent
            ),

          ),
        ),
          itemCount: 10,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
class Cat4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.red,
        child: GridView.count(
          crossAxisCount: 5, // 2 columns
          mainAxisSpacing: 10, // vertical spacing
          crossAxisSpacing: 10, // horizontal spacing
          padding: EdgeInsets.all(10), // padding around the grid
          children: List.generate(10, (index) {
            // Different colors for each box
            final colors = [
              Colors.blue,
              Colors.green,
              Colors.yellow,
              Colors.purple,
              Colors.orange,
              Colors.teal,
              Colors.pink,
              Colors.cyan,
              Colors.lime,
              Colors.indigo,
            ];

            // Different border radius for visual interest
            final borderRadius = BorderRadius.circular((index % 3 + 1) * 8.0);

            return Container(
              decoration: BoxDecoration(
                color: colors[index % colors.length],
                borderRadius: borderRadius,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 4,
                    offset: Offset(2, 2),
                  )
                ],
              ),
              child: Center(
                child: Text(
                  'Box ${index + 1}',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}