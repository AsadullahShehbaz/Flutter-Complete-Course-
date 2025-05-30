// Importing required packages
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'LoginPage.dart';
import 'Splash_Screen.dart'; // For local data storage (key-value pair)

// The main() function is the entry point of the Flutter app
void main() {
  runApp(MyApp()); // Starting the app with MyApp widget
}

// Stateless widget for the root of the application
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Lec 82 Shared Preference',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue).copyWith(background: Theme.of(context).colorScheme.inversePrimary), // Theme color for the app
      ),
      home: SplashScreen(), // Setting the home screen
    );
  }
}

// Stateful widget to allow changes when data is saved or loaded
class MyHomePage82 extends StatefulWidget {
  const MyHomePage82({super.key});

  @override
  State<MyHomePage82> createState() => _MyHomePageState();
}

// The state class for MyHomePage
class _MyHomePageState extends State<MyHomePage82> with SingleTickerProviderStateMixin {
  var nameController = TextEditingController(); // Controller for the text input field

  static const String KEYNAME = 'name'; // Key used to store and retrieve name from SharedPreferences

  var nameValue = 'No Name Saved'; // Default value to display

  @override
  void initState() {
    super.initState();
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
                // Text input field to enter name
                TextField(
                  controller: nameController, // Attach controller to get user input
                  decoration: InputDecoration(
                    label: const Text('Name'), // Label inside the text field
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(22), // Rounded borders
                    ),
                  ),
                ),
                const SizedBox(height: 11), // Space between widgets

                // Button to save entered name using Shared Preferences
                ElevatedButton(
                  onPressed: () async {
                    var name = nameController.text.toString(); // Get text from TextField
                    var prefs = await SharedPreferences.getInstance(); // Get SharedPreferences instance
                    prefs.setString(KEYNAME, name); // Save the name with the given key
                  },
                  child: const Text('Save'),
                ),

                const SizedBox(height: 11), // More spacing

                // Display the saved or default name
                Text(nameValue),
              ],
            ),
          ),
        ),
      ),
    );
  }

}
