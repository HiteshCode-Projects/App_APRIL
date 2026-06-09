import 'package:flutter/material.dart';

void main() {
  runApp(ProductApp());
}

class ProductApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(


      home: Scaffold(

       appBar: AppBar(title: Text("Product Store")),

       body: Center(

             child: Container(
              width: 250,

              padding: EdgeInsets.all(16),

              decoration: BoxDecoration(
                border: Border.all(color: Colors.green),
                borderRadius: BorderRadius.circular(12),
              ),


             child: Column(
              mainAxisSize: MainAxisSize.min ,
             children: [

                      TextField(
                        decoration: InputDecoration(
                          labelText: "Search box...", 
                          border: OutlineInputBorder(),
                        ),
                      ) , //Input Box- User can Provide Value

                      SizedBox(height: 8),

                   
                   Image.network(
                    "https://images.pexels.com/photos/20385205/pexels-photo-20385205.jpeg",
                    height: 120,
                   ),

                   SizedBox(height: 10),

                   Text("HeadPhones" , 
                   style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                   ),
                   ),
                   SizedBox(height: 5),

                   Text("Rs 2,499"),

                   SizedBox(height: 10),

                   Row( 
                     mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                 
                     Icon(Icons.shopping_cart),
                     
                     SizedBox(width: 8),

                     TextButton(onPressed: (){}, child: Text("Add To Cart"))

                    ],)



             ],


             ),




             ),


       ),



      ),


    );
  }
}
