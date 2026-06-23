// import 'package:flutter/material.dart';

// void main() {
//   runApp( MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(home: Home());
//   }
// }

// class Home extends StatelessWidget {
//   Future<void> loadData() async {
//     print("Loading...");

//     await Future.delayed(Duration(seconds: 3));

//     print("Data Loaded");
//   }

//   @override
//   Widget build(BuildContext context) {
//     loadData();

//     return Scaffold(

//     appBar: AppBar(title: Text("Async Demo")),

//     body: Center(

//      child: Text("Check Console"),

//     ),

//     );
//   }
// }

//Example 2
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: DownloadScreen()));
}

class DownloadScreen extends StatefulWidget {
  @override
  State<DownloadScreen> createState() => _DownloadScreenState();
}

class _DownloadScreenState extends State<DownloadScreen> {
  String status = "Not Started";

  Future<void> downloadFile() async {
    setState(() {
      status = "Downloading....";
    });

    await Future.delayed(Duration(seconds: 3));

    setState(() {
      status = "Completed";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Async Demo")),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text(status, style: TextStyle(fontSize: 25)),

            SizedBox(height: 20),

            ElevatedButton(onPressed: downloadFile, child: Text("Download")),
          ],
        ),
      ),
    );
  }
}
