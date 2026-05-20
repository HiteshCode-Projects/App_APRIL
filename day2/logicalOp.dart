void main() {
  //Logical Operators - AND, OR, NOT
  // && - AND operator , Output is when both the conditions are true
  // || - OR operator , Output is when at least one of the conditions is true
  // ! - NOT operator , Output is the opposite of the condition

  bool isLoggedin = true;

  bool hasSubscription = false;

  bool canWatchMovie = isLoggedin && hasSubscription;

  print("Can Watch Movie $canWatchMovie");

  bool isAdmind = true;
  bool isModerator = false;

  bool canDelete = isAdmind || isModerator;
  print(canDelete);

  //Assignment Operator =
  int score = 10;

  score += 5;
  print(score);

  //Ternary Operator - Decsion in One Line

  bool isLogin = true;

  String message = isLogin ? "Welcome Good Morning" : " Please Login First ";

  print(message);

  //Null - Aware Operator - ??
  //  When Data Maybe Empty

  String? name;

  String displayName = name ?? "Guest";
  print(displayName);
}
