import 'dart:io';
void main() {
  List<int> numbers = [10, 5, 8, 3, 12, 6, 15, 7, 2, 9];
  int largestNumber = numbers[0];

  for (var number in numbers) {
    if (number > largestNumber) {
      largestNumber = number;
    }
  }

  print('The largest number is: $largestNumber');
}
