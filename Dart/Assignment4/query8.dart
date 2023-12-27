void main(List<String> args) {
  String text = 'radar';
  if (is_palindrome(text)) {
    print('"$text" is a palindrome!');
  } else {
    print("$text is not a palindrome!");
  }
  ;
}

is_palindrome(s) {
  s = s.toLowerCase().replaceAll(" ", "");
  return s == String.fromCharCodes(s.runes.toList().reversed);
}
