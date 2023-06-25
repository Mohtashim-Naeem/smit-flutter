// Q.22: Given a map representing a shopping cart with keys as product
//names and values as quantities, write Dart code to check if a product
// named "Apple" exists in the cart. Print "Product found" if it exists,
//otherwise print "Product not found".

void main(List<String> args) {
  Map shopping_cart = {
    "denim jacket": '2',
    "sando": '1',
    "Black Trouser": '3',
    "Apple": 3,
  };
  if (shopping_cart.keys.contains('Apple')) {
    print("Product found");
  } else {
    print("Product not found");
  }
}
