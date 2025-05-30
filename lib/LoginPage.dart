import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Splash_Screen.dart';
import 'main.dart';
class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<LoginPage> {
  var email_Text = TextEditingController();
  var password_Text = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text('Login Page'),
        ),
        body: Center(
          child: Container(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // -----------------Email-----------------------
                Text('Enter Your Email :',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.green),),
                TextField(
                  controller: email_Text,
                  decoration: InputDecoration(
                    hintText: 'Enter Valid Email Here...',
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30),borderSide: BorderSide(color: Colors.green,width: 2)),
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30), borderSide: BorderSide(color: Colors.green,width: 2)),
                    disabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30),borderSide: BorderSide(color:Colors.red,width: 2)),
                    suffixText: 'UserName Exists',
                    // suffixIcon:IconButton(icon:Icon(Icons.remove_red_eye,color: Colors.green,),onPressed : (){},),
                    prefixIcon: Icon(Icons.email,color: Colors.green,),
                  ),
                ),
                // -----------------Password-----------------------
                const SizedBox(height: 20,),
                Text('Enter Your Password :',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.green),),
                TextField(
                  // enabled: false,
                  controller: password_Text,
                  obscureText: true,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                      hintText: 'Enter Valid Password Here...',
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30),borderSide: BorderSide(color: Colors.green,width: 2)),
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30), borderSide: BorderSide(color: Colors.green,width: 2)),
                      disabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30),borderSide: BorderSide(color:Colors.red,width: 2))
                  ),
                ),
                // -----------------Phone Number-----------------------
                const SizedBox(height: 20,),
                Text('Enter Your Phone Number :',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.green),),
                TextField(
                  // enabled: false,
                  keyboardType: TextInputType.phone,
                  controller: password_Text,
                  obscureText: true,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                    hintText: 'Enter Phone Number Here...',
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30),borderSide: BorderSide(color: Colors.green,width: 2)),
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30), borderSide: BorderSide(color: Colors.green,width: 2)),
                    disabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30),borderSide: BorderSide(color:Colors.red,width: 2))
                    ,prefixIcon: Icon(Icons.phone,color: Colors.green,),
                  ),
                ),
                //-------------------Login Button-----------------------
                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.green, width: 2), // Border color & width
                      borderRadius: BorderRadius.circular(25), // Rounded corners
                    ),
                    child: ElevatedButton(
                      onPressed: () async{
                        String userEmail = email_Text.text.toString();
                        String userPassword = password_Text.text;

                        var sharedPref = await SharedPreferences.getInstance();
                        sharedPref.setBool(SplashScreenState.KEYLOGIN,true);
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context)=>MyHomePage82(),
                            )
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Login',style: TextStyle(color: Colors.green,fontSize: 25,fontWeight: FontWeight.bold),),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}
