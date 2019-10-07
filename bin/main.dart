import 'dart:math';

class Point {
  int x;
  int y;

  Point(int x, int y) {
    this.x = x;
    this.y = y;
  }
}
// Challenge 1
// Consider the class Point defined above
// Write a function that takes a list of Points and logs to the console the bounds of the smallest upright rectangle which encloses all the points.
// For example, given the points (-1, 0), (2, 2), (1,3) the function should print:
// Bottom-left: (-1, 0)
// Top-right: (2,3)

// Challenge 2
// A number is a perfect number if is equal to sum of its proper divisors, that is, sum of its positive divisors excluding the number itself.
// Write a function to check if a given number is perfect or not.
// For example, if 15 is given as input it should print 'false' because Divisors of 15 are 1, 3 and 5. Sum of
// divisors is 9 which is not equal to 15
// if 6 is given as input it should print 'true' because Divisors of 6 are 1, 2 and 3. Sum of
// divisors is 6.

void main() {
  // Test the function defined above with given List of points
  List<Point> points = [Point(-1, 0), Point(2, 2), Point(1, 3)];

  rectangle(points);
  // Test the perfect number function here
  print(perfectNumber(6));
}

bool perfectNumber(int x) {
  int sum = 0;
  for (int i = 1; i <= x ~/ 2; i++) {
    if (x % i == 0) {
      sum = sum + i;
    }
  }
  print(
      "Debug Statement: value of sum is $sum"); // for debug, to check value of sum
  if (sum == x) {
    return true;
  } else {
    return false;
  }
}

void rectangle(List<Point> pt) {
  List<int> x = pt.map((Point pointOject) => pointOject.x).toList();
  List<int> y = pt.map((Point pointOject) => pointOject.y).toList();

  int xmin = x.reduce(min);
  int xmax = x.reduce(max);

  int ymin = y.reduce(min);
  int ymax = y.reduce(max);
  print('Bottom-left: ($xmin, $ymin)');
  print('Top-right: ($xmax,$ymax)');
}
