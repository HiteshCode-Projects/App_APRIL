void main() {
  //Control Flow

  //1. if(CONDITION) - If will ONLY Gives The Output When Condition is True

  bool isLoggedIn = true;

  if (isLoggedIn) {
    print("Welcome To My App");
  }

  var age = 12;

  if (age >= 18) {
    print("Eligble For Driving...");
  }

  // if() = True /  else= False

  bool paymentSucess = false;

  if (paymentSucess) {
    print("Payment Successful");
  } else {
    print("Payment Failed");
  }

  //else if - Multiple Choice

  int rating = 2;

  if (rating == 5) {
    print("Excellent");
  } else if (rating == 4) {
    print("Very good");
  } else if (rating == 3) {
    print("Good");
  } else {
    print("Needs improvement");
  }

  //Switch Statement -

  int menuOption = 5;

  switch (menuOption) {
    case 1:
      print("Home Screen");
      break;

    case 2:
      print("Profile Screen");
      break;

    case 3:
      print("Setting Screen");
      break;

    default:
      print("Invalid Option");
  }
}
