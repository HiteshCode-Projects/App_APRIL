import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'notification_service.dart';

class HomeScreen extends StatelessWidget {
  final productController = TextEditingController();

  void addProduct() async {
    await FirebaseFirestore.instance.collection('products').add({
      'name': productController.text,
      'createAt': Timestamp.now(),
    });
  }

  void logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),

        actions: [
          IconButton(
            onPressed: () => logout(context),
            icon: Icon(Icons.logout),
          ),
        ],
      ),

      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(labelText: "Product Name"),
            controller: productController,
          ),

          ElevatedButton(onPressed: addProduct, child: Text("Add Product")),

          Expanded(
            child: StreamBuilder(
              stream: FirebaseFirestore.instance
                  .collection('products')
                  .snapshots(),

              builder: (context, snapshot) {
                if (!snapshot.hasData) return CircularProgressIndicator();

                var docs = snapshot.data!.docs;

                return ListView.builder(
                  itemCount: docs.length,

                  itemBuilder: (context, index) {
                    var data = docs[index];

                    return ListTile(title: Text(data['name']));
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
