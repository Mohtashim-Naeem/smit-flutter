// Q.2: Create an empty list of type string called days. Use the add method to add names of 7 days and print all days.
void main() {
  List<String> days = [];
  // Adding names of 7 days
  days.add('Monday');
  days.add("teusday");
  days.add("wednesday");
  days.add("thursday");
  days.add("friday");
  days.add("saturday");
  days.add("Sunday");
  print(days);
// printing all days.
  days.forEach((day) {
    print(day);
  });
}
