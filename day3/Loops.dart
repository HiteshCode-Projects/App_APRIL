void main() {
  //1.for(start Point; condition; increment/decrement)

  //Task - Print Number 1 to 10
  // print(1);
  // print(2);
  // print(3);

  // for (int i = 1; i <= 10; i++) {
  //   //Task
  //   print("The Number is $i");
  // }

  //Print - 10 to 1
  // for (int i = 10; i >=1 ; i--) {
  //   //Task
  //   print("The Number is $i");
  // }

  //While Loop - Entry Controlled - While Loop Start When COndition is True and It will Stop When Condition is False

  int count = 1;

  while (count <= 5) {
    print("Login Attempts $count");
    count++;
  }

  //Do - While Loop - Exit Controlled Loop

  // I will Execute/Run The Code atleast for 1 Time

  int number = 7;

  do {
    print("Welcome User");
  } while (number <= 5);

  //break - STOP Loop

  for (int y = 1; y <= 5; y++) {
    if (y == 3) {
      print("Item Found");
      break; //Stop The Lopop
    }

    print("Checking Item $y");
  }

  //conitue - Skip and Go ahead

  for (int x = 1; x <= 5; x++) {
    if (x == 3) {
      continue;
    }

    print("Show Items $x");
  }

  //Task: Check Numbers from 1 To 10, ANd Print Even or Odd

  for (int num = 1; num <= 10; num++) {
    //Logic : ANy Number % 2 == 0 ->Even

    if (num % 2 == 0) {
      print("EVEN Number is $num");
    } else {
      print("Odd Number is $num");
    }
  }


  //Print The Sum of Numbers from 1 to 5
}
