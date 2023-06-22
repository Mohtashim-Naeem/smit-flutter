/*
Q.8: From Q3 write a program that prints the days that start with the letter "S".
*/

void main() {
  List<String> days = [
    "Monday",
    "Teusday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
    "Sunday"
  ];
  List<String> days_start_with_S =
      days.where((day) => day.startsWith("S")).toList();
  print("\nDays of the week $days.");
  print("Days starts with 'S' $days_start_with_S.");
}
