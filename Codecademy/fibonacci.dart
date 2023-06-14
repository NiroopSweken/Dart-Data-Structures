void main() {
  int n = 10;
  int fibonacciNumber = findFibonacciNumber(n);
  List<int> fibonacciSeries = generateFibonacciSeries(n + 2);
  print("The fibonacci series upto $n-th number is $fibonacciSeries");
  print("The $n-th number in the fibonacci series is $fibonacciNumber");
}

/*-----------------------------------------------------*/
/*----Finding the Fibonacci number at the n-th index---*/
/*-----------------------------------------------------*/
int findFibonacciNumber(int n) {
  int a = 0;
  int b = 1;

  for (int i = 2; i <= n; i++) {
    int temp = a + b;
    a = b;
    b = temp;
  }

  return b;
}

/*-----------------------------------------------------*/
/*----Finding the Fibonacci series untill n-th index---*/
/*-----------------------------------------------------*/
List<int> generateFibonacciSeries(int n) {
  List<int> series = [];
  int a = 0;
  int b = 1;

  for (int i = 2; i <= n; i++) {
    series.add(a);
    int temp = a + b;
    a = b;
    b = temp;
  }

  return series;
}
