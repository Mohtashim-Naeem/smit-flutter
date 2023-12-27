// Q.6: Create Map variable name world then inside it create countries Map,
// Key will be the name country & country value will have another map having
// capitalCity, currency and language to it. by using any country key
// print all the value of Capital & Currency.
void main() {
  Map world = {
    "Pakistan": {
      "capitalCity": "Islamabad",
      "currency": "Rs.",
      "language": "Urdu"
    },
    "Saudi Arabia": {
      "capitalCity": "Riyadh",
      "currency": "Saudi riyal",
      "language": "Arabic"
    },
    "America": {
      "capitalCity": "Washington, D.C.",
      "currency": "United States dollar ",
      "language": "English"
    },
    "England": {
      "capitalCity": "London",
      "currency": "pounds",
      "language": "English"
    },
  };
  print(world['Pakistan'].values);
}
