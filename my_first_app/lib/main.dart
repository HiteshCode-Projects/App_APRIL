import 'package:flutter/material.dart';

void main() {
  //Entry Point of the application
  runApp(
    MyApp(),
  ); //To run the app, we need to call the runApp function and pass it a widget. The widget that we pass to runApp becomes the root of the widget tree.
}

//Important Points
//Screen is Divide Two Parts : appBar and body
//Everything on Screen is a Widget for Flutter .
//Two Types of Widgets- Statless and Statefull
//StatlessWidget - It does not change or update on screen
//StatefullWidget - It gets update When Data is Changing / UI will update too
//UI -The Screen- User Interface - What user sees on screen

//class - Blueprint/Design/Template For My Screen

class MyApp extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    
     home: Scaffold(
      //Screen Scruture - For all Types of screen
       
       appBar: AppBar(title: Text("Whatsapp📞")),

          //Emoji - Windows Key + .
       body: Center(
            child: Text("Hello Good Evening?"),
       ),


     ),



    );
  }
}
