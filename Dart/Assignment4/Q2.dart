void main() {
  var n = 10;
  List<int> fib_series = [0, 1];
  for (var i = 2; fib_series[i - 1] + fib_series[i - 2] <= n; i++) {
    fib_series.add(fib_series[i - 1] + fib_series[i - 2]);
  }
  print(fib_series);
}
