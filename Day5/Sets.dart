void main() {
  //Set - It Does not Allow Duplicates

  Set<String> categories = {"Electronics", "Fashion", "Books", "Fashion"};

  print(categories);

  //Add Item
  categories.add("Kids");

  //Remove Item
  categories.remove("Books");

  print(categories);

  if (categories.contains("Travels")) {
    print("Travel found");
  } else {
    print("Not Found");
  }

  //Convert List to Set (Remove Duplicate)
  List<String> items = ["Apple", "Banana", "Apple"];

  Set<String> uniqueItems = items.toSet(); //ListName.toSet()

  print(uniqueItems);

  //Convert Set into List - toList()
  List<String> finalItem = uniqueItems.toList();

  print(finalItem);

  //Real Example
  Set<String> notification = {};

  notification.add("New Messgae-Whatsapp");
  notification.add("Swiggy Offer");
  notification.add("New Messgae-Whatsapp");
  notification.add("Gmail");

  for (var abc in notification) {
    print(abc);
  }
}
