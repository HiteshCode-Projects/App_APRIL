import 'package:flutter/material.dart';

void main() {
  runApp(LoginFrom());
}

class LoginFrom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: LoginScreen());
  }
}

class LoginScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    //Form Design

    return Scaffold(
      appBar: AppBar(title: Text("Login Form")),

      body: Padding(
        padding: EdgeInsets.all(20),

        child: Form(
          key: _formKey,

          child: Column(
            children: [
              //Email Feild
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(),
                ),

                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Email Cannot be Empty";
                  }

                  if (!value.contains("@")) {
                    return "Email mush have @";
                  }

                  if (!value.contains(".")) {
                    return "Email mush have .";
                  }

                  if (value.endsWith(".")) {
                    return "Invalid Email";
                  }
                  return null;
                },
              ),

              SizedBox(height: 15),

              TextFormField(
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                ),

                validator: (value) {
                  if (value == null || value.length < 6) {
                    return "Password must be at least 6 character";
                  }

                  if (!RegExp(r'[a-z]').hasMatch(value)) {
                    return "Must contain one Lowercase letter";
                  }

                  if (!RegExp(r'[A-Z]').hasMatch(value)) {
                    return "Must contain one Uppercase letter";
                  }

                  if (!RegExp(r'[0-9]').hasMatch(value)) {
                    return "Must contain one number";
                  }

                  if (!RegExp(r'[!@#$%^&*(),.?:{}|<>]').hasMatch(value)) {
                    return "Must contain one SPecail Character";
                  }

                  return null;
                },
              ),

              SizedBox(height: 15),

              //Login Button
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Login Successfull")),
                    );
                  }
                },
                child: Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
