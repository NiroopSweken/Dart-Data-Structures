void main() {
  String inputString = "Alphabet";
  print("Given String is : $inputString");
  print("Reverse string is :${reversingString(inputString)}");
}

/*-----------------------------------------------------*/
/*------Reversing a string with 'reversed; keywod------*/
/*-----------------------------------------------------*/
String reverseString(String inputString) {
  List<String> characters = inputString.split('');
  List<String> reversedCharacters = characters.reversed.toList();
  String reversedString = reversedCharacters.join();
  return reversedString;
}

/*-----------------------------------------------------*/
/*----Reversing a string without 'reversed; keyword----*/
/*-----------------------------------------------------*/
String reversingString(String input) {
  List<String> characters = input.split('');
  int start = 0;
  int end = characters.length - 1;

  while (start < end) {
    String temp = characters[start];
    characters[start] = characters[end];
    characters[end] = temp;
    start++;
    end--;
  }

  String reversedString = characters.join('');
  return reversedString;
}
