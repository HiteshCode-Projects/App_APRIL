class User {
  String username = "";
  String passowrd = "";

  //Constructor() - IT IS SPECAIL METHOD/Fucntion In CLass with THE SAME NAME OF CLASS NAME

  User(this.username, this.passowrd);

  bool Adminlogin() {
    return username == "admin" && passowrd == "1234";
  }
}

void main() {
  //Create a Object

  User user1 = User("Baskara", "1234567");

  User user2 = User("admin", "1234");

  if (user1.Adminlogin()) {
    print("Login Successfull- User1");
  } else if (user2.Adminlogin()) {
    print("Login Sucessfull - User2 ");
  } else {
    print("Login Failed");
  }
}
