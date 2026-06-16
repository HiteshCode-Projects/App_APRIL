import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: FirstScreen());
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),

      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context ,
              //Address
              MaterialPageRoute(builder: (context)=> SecondScreen(),
               ),
            );
          },
          child: Text("Go To Next Page"),
        ),
      ),
    );
  }
}
