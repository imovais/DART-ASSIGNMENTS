/*
Q1: Write a Dart function that returns whether a passed string is palindrome or not?
* A palindrome is word, phrase, or sequence that reads the same backward as forward, e.g., madam, non, mom etc.
 */
void main(List<String> args) {
  check_palindrome(String word) {
    String result = '';
    if (word.toLowerCase() == word.toLowerCase().split('').reversed.join('')) {
      result = "$word is Palindrome";
    } else {
      result = "$word is Not Palindrome";
    }
    return result;
  }

  print(check_palindrome('Mom'));
}//main
