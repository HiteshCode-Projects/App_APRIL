//class with Method(Function inside Class)

class User {
  String name = "";
  int age = 0;
  String email = "";

  //Method/Function

  void Greet() {
    print("Hello , my name is $name");
  }
}

void main() {
  User user1 = User();

  user1.name = "Suneet";

  //ObjectName.MEthodName
  user1.Greet();
}
