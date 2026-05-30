// void main() {
//   print("App Started");

//   fetchData();

//   print("App Ready");

// }

// void fetchData() {
//   for (int i = 0; i < 10000000000; i++) {
//     print("Data Loaeded");
//   }
// }

//Solution - Future Function

Future<String> fetchData() {

  return Future.delayed(
       Duration(seconds: 3),

       ()=>"Data Loaded",

  );
}


//async Keyword Before Function

Future<void> main() async{


print("App Started");
             
  String result  = await  fetchData();
  print(result);
 
print("App Ready");

}
