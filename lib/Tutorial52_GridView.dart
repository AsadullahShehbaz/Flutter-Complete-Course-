import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Color> colors = [
      Colors.red, Colors.green, Colors.blue,
      Colors.yellow, Colors.purple
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('GridView Example')),
        body: Stack(
          children: [
            // GridView.count(
            //   crossAxisCount: 2,
            //   mainAxisSpacing: 10,
            //   crossAxisSpacing: 10, // Optional: Adds spacing between columns
            //   children: List.generate(100, (index) {
            //     return Container(
            //       decoration: BoxDecoration(color: Colors.greenAccent),
            //       child: Center(
            //         child: Text(
            //           'Item $index',
            //           style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            //         ),
            //       ),
            //     );
            //   }),
            // ),
            GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // 2 columns
              ),
              itemCount: colors.length,
              itemBuilder: (context, index) {
                return Container(color: colors[index]);
              },
            ),
            GridView.extent(
              maxCrossAxisExtent: 100, // Each item max width = 150
              children: [
                Container(color: Colors.red),
                Container(color: Colors.green),
                Container(color: Colors.blue),
                Container(color: Colors.cyanAccent),
                Container(color: Colors.deepOrange),
                Container(color: Colors.orangeAccent),
                // Add more items...
              ],
            )
          ],
        ),
      ),
    );
  }
}