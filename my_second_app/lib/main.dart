import 'package:flutter/material.dart';

void main() {
  runApp(HomeScreen());
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //Screen Structure

        //Icon(Icons.IconValue)
        appBar: AppBar(title: Icon(Icons.person_2_rounded)),

        //Example 1
        // body: Center(

        //    child: Text(
        //     "Hello Welcome To Flutter App" ,
        //       style: TextStyle(
        //         fontSize: 22 ,
        //         fontWeight: FontWeight.bold,
        //       ),
        //     ),

        // ),

        //eXAMPLE 2 - Profile Cars
        body: Center(
          child: Container(
            width: 200,
            height: 150,

            padding: EdgeInsets.all(
              20,
            ), //Space Inside The Box from all 4 Direction
            margin: EdgeInsets.all(
              20,
            ), //Space Oustide The Box from all 4 Direction

            decoration: BoxDecoration(
              color: Colors.lightBlueAccent.shade200,
              borderRadius: BorderRadius.circular(12),
            ),

            child: Align(
              alignment: Alignment.topRight,
              child: Text("Flutter Developer"),
            ),
          ),
        ),
      ),
    );
  }
}
