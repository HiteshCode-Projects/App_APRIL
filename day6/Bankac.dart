class BankAccount {
  //Properties
  String accountHolder;
  double balance;

  //Constructor
  BankAccount(this.accountHolder, this.balance);

  //Deposit Metho
  void deposit(double amount) {
    balance = balance + amount;

    print("Rs $amount deposited sucessfully");
    print("Cureent Balance : $balance");
  }
  //WithDraw
     void withdraw(double amount) {
    if (amount <= balance) {
      balance = balance - amount;
      print("Rs $amount withdrawn successfully");
      print("Current Balance : $balance");
    } else {
      print("Insufficient funds. Current Balance : $balance");
    }
  }


  //Check Balance
  void checkBalance() {
    print("Account Holder : $accountHolder");
    print("Current Balance : $balance");
  }
}

void main() {
  //Object
  BankAccount user1 = BankAccount("Vishnu", 5000);

  //Callimg The Method
  user1.checkBalance();

  user1.deposit(1500);

  user1.checkBalance();
}
