void main() {
  //Varibale Stores only 1 value at a time
  var name1 = "Baskara";
  var name2 = "Bhakti";

  //List - Multiple Data at the same Time
  // [ ] Sqaure Bracket is the symbol of List
  // Rule : Index No it ALWAYS START WITH 0

  List<String> users = [
    "Baskara",
    "Bhakti",
    "Jaishri",
    "Divakar",
    "Sanjai",
    "Shikha",
    "Shreemati",
    "Sunnet",
    "Sai",
    "Lithesh",
    "Bhagya",
  ];

  //Access The List Data - ListName[IndexNo]
  print(users[3]);
  print(users[10]);

  //Add The Data Listname.add("New Value")

  users.add("Hello Guys");

  print(users);

  //Remove Data
  users.remove("Sunnet");

  print(users);

  //Total No of Data
  // ListName.length

  print(users.length);
}
