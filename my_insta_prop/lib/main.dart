import 'package:flutter/material.dart';

void main() {
  runApp(ProfileHeaderApp());
}

class ProfileHeaderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Profile")),

        body: Padding(
          padding: EdgeInsets.all(20),

          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(radius: 30, child: Icon(Icons.person_4)),
                  SizedBox(width: 15),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Text(
                        "John Doe ",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),

                      Text("Flutter Developer "),
                    ],
                  ),

                  Spacer(),

                  ElevatedButton(onPressed: () {}, child: Text("Follow")),
                ],
              ),

              SizedBox(height: 20),

              Text("Welcome To My Profile"),

              SizedBox(height: 20),

              //Image
              // Image.network(
              //   "https://images.pexels.com/photos/34317747/pexels-photo-34317747.jpeg",
              //   height: 150,
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.network(
                    "https://images.pexels.com/photos/34317747/pexels-photo-34317747.jpeg",
                    height: 150,
                  ),

                  SizedBox(width: 10),

                  Image.network(
                    "https://images.pexels.com/photos/34317747/pexels-photo-34317747.jpeg",
                    height: 150,
                  ),

                  SizedBox(width: 10),

                  Image.network(
                    "https://images.pexels.com/photos/34317747/pexels-photo-34317747.jpeg",
                    height: 150,
                  ),
                ],
              ),

              SizedBox(height: 10),

              Text("Hello guys")
            ],
          ),
        ),
      ),
    );
  }
}
