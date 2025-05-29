import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List Wheel Scroll View',
      theme: ThemeData(
        primarySwatch: Colors.blue, // Set the primary color to blue
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  var nameController = TextEditingController();
  static const String KEYNAME = 'name';
  var nameValue = 'No Name Saved';
  @override
  void initState() {
    super.initState();
    getValue();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lec 81 Shared Preference'),
      ),
      body: Container(
        child: Center(
          child: SizedBox(
            width: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    label: const Text('Name'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(22),
                    ),
                  ),
                ),
                const SizedBox(height: 11),
                ElevatedButton(
                  onPressed: () async {
                    var name = nameController.text.toString();
                    var prefs = await SharedPreferences.getInstance();
                    prefs.setString(KEYNAME, name);
                  },
                  child: const Text('Save'),
                ),
                const SizedBox(height: 11),
                 Text(nameValue),
              ],
            ),
          ),
        ),
      ),
    );
  }
  void getValue() async{
    // You can implement the logic to retrieve the saved value here
    var prefs = await SharedPreferences.getInstance();
    var getName = prefs.getString(KEYNAME);

    nameValue = getName ?? 'No Value Saved';

    setState((){});
  }
}