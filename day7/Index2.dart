//Method OVerriding - Both CHild and Parent Having SAME METHOD NAME- Child Changes The Parent Behavior

class User {
  void login() {
    print("User Logged in");
  }
}

class Admin extends User {
  
  @override
  void login() {
    print("Admin Logged in with fulll Access");
  }
}

void main() {
  Admin adminuser = Admin();

  adminuser.login();
}
