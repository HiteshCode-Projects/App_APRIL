// void main() async {
//   //Customer- Variable
//   String CustomerName = "Shounak";
//   int age = 25;
//   double walletBalance = 500.50;
//   bool isPremiumUser = true;

//   print(CustomerName);
//   print(age);
//   print(walletBalance);
//   print(isPremiumUser);

//   //Menu- Multiple Items/Data

//   List<String> menu = ["Pizza", "Burger", "Pasta"];

//   for (String item in menu) {
//     print(item);
//   }

//   print(menu);

//   //ProductName : Price
//   //Map

//   Map<String, int> prices = {"Pizza": 299, "Burger": 149, "Pasta": 199};

//   showWelcome();

//   OrderFood("Pizza"); //Function with Parameter

//   checkBalance(500);

//   //Create Object
//   Customer cus = Customer("Biswajit", 22);

//   cus.displayInfo();

//   //Async and await
//   await  processPayment();
// }

// //Task - Fuction

// void showWelcome() {
//   print("Welcome To Foodie App");
// }

// void OrderFood(String item) {
//   print("Ordering $item");
// }

// void checkBalance(double balance) {
//   if (balance >= 299) {
//     print("Order Placed");
//   } else {
//     print("Insuffeicent Balance");
//   }
// }

// //Customer Objct

// class Customer {
//   String name;
//   int age;

//   Customer(this.name, this.age);

//   void displayInfo() {
//     print("Customer :$name");
//     print("Age  $age");
//   }
// }

// //Payment
// Future<void> processPayment() async {
//   print("Paymeny Processing");

//   await Future.delayed(Duration(seconds: 2));

//   print("Payament Successfull");
// }




void main() async {
  showWelcome(); //Function Call

  

  String CustomerName = "Shounak";

  int age = 25;

  double walletBalance = 500.50;

  bool isPremiumUser = true;
  String restraurant = "Pizza Hut";

  print("Restaurant : $restraurant");

  

  Map<String, String> menu = {
    "Pizza": "Rs.299",
    "Burger": "Rs.149",
    "Pasta": "Rs.199",
  };
  print("MENU : \n $menu");  //For Loop

  OrderFood("Pizza"); //Function with Parameter

  checkBalance(500);

  //Create Object

  Customer cus = Customer("Shounak", "Pizza", "Rs.299");

  cus.displayInfo();

  //Async and await

  await processPayment();
  OrderDelivery();
}

//Task - Fuction

void showWelcome() {
  print("Welcome To Foodie App");
}

void OrderFood(String item) {
  print("Adding $item to cart");
}

void checkBalance(double balance) {
  if (balance >= 299) {
    print("Order Placed");
  } else {
    print("Insuffeicent Balance");
  }
}

void OrderDelivery() {
  print("Order Successfully Delivered");
}

//Customer Objct

class Customer {
  String name;

  String item;
  String price;

  Customer(this.name, this.item, this.price);

  void displayInfo() {
    print("Customer :$name");

    print("Item : $item");
    print("Price : $price");
  }
}

//Payment

Future<void> processPayment() async {
  print("Payment Processing");

  await Future.delayed(Duration(seconds: 2));

  print("Payment Successfull");
}
