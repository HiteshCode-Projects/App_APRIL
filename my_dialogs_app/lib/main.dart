import 'package:flutter/material.dart';

void main() {
  runApp(DialogDemoApp());
}

class DialogDemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: DemoScreen());
  }
}

class DemoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dialogs Demo")),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          //SnackBar
          children: [
            //SnackBar
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text("Item Add To Cart")));
              },
              child: Text("Add To cart"),
            ),
            SizedBox(height: 20),

            //Dialog
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Logout"),

                      content: Text("Do You want Ti Logout"),

                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("Cancel"),
                        ),

                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("Logout"),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text("Show Alert"),
            ),
            SizedBox(height: 20),

            //BottomSheet
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Container(

                   padding: EdgeInsets.all(20),

                   height: 120,

                   child: Column(

                      children: [
                        Text("Options"),

                        ListTile(
                          leading: Icon(Icons.mail),
                          title: Text("Gmail"),
                        ),

                        ListTile(
                          leading: Icon(Icons.delete),
                          title: Text("Delete"),
                        ),

                        ListTile(
                          leading: Icon(Icons.share),
                          title: Text("Share"),
                        ),
                      ],



                   ),





                    );
                  },
                );
              },
              child: Text("Bottom Sheetl"),
            ),
          ],
        ),
      ),
    );
  }
}
