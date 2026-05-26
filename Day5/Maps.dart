void main() {
  //Map - key:value pair
  Map<String, String> user = {
    //key : value
    "name": "Rahul",

    "email": "rahul@gmail.com",

    "course": "App Development",
  };

  Map<String, dynamic> userProfile = {
    "username": "Vishnu",
    "LoginStatus": true,
    "password": 1223,
  };

  print(userProfile);

  //Access The Data- MapName["keyName"]
  print(userProfile["LoginStatus"]);

  //Add New Data- Mapname["keyName"] = "Value"
  userProfile["city"] = "Mumbai";

  print(userProfile);

  //Update The Existing
  userProfile["password"] = "Vishu@123";

  print(userProfile);

  //Remove The data  - MapName.remove("KeyName")

  userProfile.remove("city");

  print(userProfile);

  if (userProfile.containsKey("email")) {
    print("Email Found");
  } else {
    print("Email Not Found");
  }

  //List
  List<String> fruits = ["Mango", "apple", "Mango", "apple"];
  print(fruits);
  print(fruits.length);
}
