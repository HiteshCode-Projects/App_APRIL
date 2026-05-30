//Parent Class

class User {
  String name;

  User(this.name);

  void login() {
    print("$name LoggedIn");
  }
}

//Child CLass
class Admin extends User {
  Admin(String name) : super(name);

  void deleteUser() {
    print("User Deleted");
  }
}

//CHild Class - 2
class Customer extends User {
  Customer(String name) : super(name);

  void PlaceOrder() {
    print("Order Placed");
  }
}

//Using Parent & Child
void main() {
  //Object - Child Class

  Admin user = Admin("Shreemati");

  //Method- ObjectName.MethodName
  user.login();
  user.deleteUser();

  //Object - Customer CHild Class
  Customer customeruser = Customer("Sai");

  customeruser.login();
  customeruser.PlaceOrder();
}
