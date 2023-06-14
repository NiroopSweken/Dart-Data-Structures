void main() {
  int number = 37;
  bool isPrime = checkPrime(number);

  if (isPrime) {
    print("The given number $number is Prime");
  } else {
    print("The given number $number is not Prime");
  }
}

/*-----------------------------------------------------*/
/*Conditional check if the given number is Prime or not*/
/*-----------------------------------------------------*/
bool checkPrime(int number) {
  if (number <= 1) {
    return false;
  }

  if (number % 2 == 0) {
    return false;
  }

  for (int i = 2; i < number; i++) {
    if (number % i == 0) {
      return false;
    }
  }

  return true;
}
