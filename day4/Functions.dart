void main() {
  //Functions - To Do Specific Task

  void sayHello() {
    //Boyd - Instruction
    print("Hello User");
  }

  sayHello(); //Callimg The Function To do the task

  //2. Function With Parameter (ParaMeter/Dummy Data)

  void greetUser(String name) {
    print("Welcome $name");
  }

  greetUser("Baskara");
  greetUser("Bhakti");

  //3. Function with Return Value
  int calculateTotal(int price, int quanity) {
    return price * quanity;
  }

  int total = calculateTotal(100, 2);
  print(total);

  bool isAdult(int age) {
    return age >= 18;
  }

  bool result = isAdult(20);
  print(result);

  //Arrow Function Short and Clean
  int add(int a, int b) => a + b;

  print(add(10, 5));

  //Optional Parameter- Data is Not Always needed

  void showProfile(String name, [int? age]) {
    print("Name is $name");

    if (age != null) {
      print("Age $age");
    }
  }

  showProfile("Sunnet", 22);

  //Default Paramtere({Defualt Paramtere Name under curly Bracket})

  void setTheme({String theme = "Light"}) {
    print("Theme is $theme");
  }

  setTheme();
  
  setTheme(theme: "Dark");
}
