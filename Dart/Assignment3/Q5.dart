// Q.5: Create a map with name, phone keys and store some values to it. Use where to find all keys that have length 4.

void main() {
  Map map = {
    "companyName": ['apple', 'samsung', 'realme', 'oppo'],
    "attributes": ['call', 'camera', 'chargeable', 'flash'],
    "phone": ['11 pro max', 'A51', '9i']
  };
  dynamic result = map.keys.where((key) => map[key].length == 4);
  print("All keys that have length 4 in map $result");
}
