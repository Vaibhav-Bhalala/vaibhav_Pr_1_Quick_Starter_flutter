import 'dart:io';
void main() {
  List<int> numbers = [1, -2, 3, -4, 5, -6, 7, -8, 9, -10];

  List<int> negativeNumbers = [];
  for (var number in numbers) {
    if (number < 0) {
      negativeNumbers.add(number);
    }
  }

  print('Negative numbers: $negativeNumbers');
}
