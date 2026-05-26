void main() {
  String name = "Rahul";

  //String Interploation

  String user = "Suneet";

  String college = "xyz";

  print("My Name is $user and I a from $college College");

  //String Concatenation - Join The Strings
  String firstname = "Rohit";
  String secondname = "Sharma";

  String fullName = firstname + secondname;
  print(fullName);

  //String length - total No of Charaters in Text/String
  //No Index No Concept
  String password = "12345";
  print(password.length);

  String city = "DelHi";

  print(city.toUpperCase());

  print(city.toLowerCase());

  String message = "Welcome To Dart App";
  if (message.contains("Dart")) {
    print("Dart Word Found");
  }
}
