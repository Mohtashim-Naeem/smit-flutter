// Q.19: Given a map representing a product with keys "name",
// "price", and "quantity", write Dart code to check
// if the product is in stock. If the quantity is greater
// than 0, print "In stock", otherwise print "Out of stock".

void main(List<String> args) {
  Map products = {
    "name": "Dell-lattitude",
    "quantity": 7,
    "price": 40000,
  };
  if (products['quantity'] > 0) {
    print("In stock");
  } else {
    print("Out stock");
  }
}
