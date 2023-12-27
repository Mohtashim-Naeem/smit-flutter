// Q.3: Create a list of Days and remove one by one from the end of list.
void main() {
  List<String> days = [
    "Monday",
    "teusday",
    "wednesday",
    "thursday",
    "friday",
    "saturday",
    "Sunday"
  ];
  print(days);

  // remove sunday
  days.removeLast();
  print(days);

  // remove saturday
  days.removeLast();
  print(days);

  // remove friday
  days.removeLast();
  print(days);

  // remove thurday
  days.removeLast();
  print(days);

  // remove wednesday
  days.removeLast();
  print(days);

  // remove tuesday
  days.removeLast();
  print(days);

  // remove monday
  days.removeLast();
  print(days);
}
