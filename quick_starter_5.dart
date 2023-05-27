import 'dart:io';

void main() {
  List<List<int>> matrix = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
  ];

  bool exit = false;
  while (!exit) {
    print('-------- MENU --------');
    print('1. Sum of all elements');
    print('2. Sum of specific row');
    print('3. Sum of specific column');
    print('4. Sum of diagonal elements');
    print('5. Sum of antidiagonal elements');
    print('O. Exit');
    print('----------------------');
    stdout.write('Enter your choice: ');

    var choice = stdin.readLineSync()!.toUpperCase();

    switch (choice) {
      case '1':
        print('Sum of all elements: ${sumOfAllElements(matrix)}');
        break;
      case '2':
        stdout.write('Enter the row index (0-${matrix.length - 1}): ');
        int rowIndex = int.parse(stdin.readLineSync()!);
        print('Sum of row $rowIndex: ${sumOfRow(matrix, rowIndex)}');
        break;
      case '3':
        stdout.write('Enter the column index (0-${matrix[0].length - 1}): ');
        int colIndex = int.parse(stdin.readLineSync()!);
        print('Sum of column $colIndex: ${sumOfColumn(matrix, colIndex)}');
        break;
      case '4':
        print('Sum of diagonal elements: ${sumOfDiagonal(matrix)}');
        break;
      case '5':
        print('Sum of antidiagonal elements: ${sumOfAntidiagonal(matrix)}');
        break;
      case 'O':
        exit = true;
        break;
      default:
        print('Invalid choice. Please try again.\n');
    }
  }
}

int sumOfAllElements(List<List<int>> matrix) {
  int sum = 0;
  for (var row in matrix) {
    sum += row.reduce((a, b) => a + b);
  }
  return sum;
}

int sumOfRow(List<List<int>> matrix, int rowIndex) {
  if (rowIndex >= 0 && rowIndex < matrix.length) {
    return matrix[rowIndex].reduce((a, b) => a + b);
  }
  return 0;
}

int sumOfColumn(List<List<int>> matrix, int colIndex) {
  if (colIndex >= 0 && colIndex < matrix[0].length) {
    int sum = 0;
    for (var row in matrix) {
      sum += row[colIndex];
    }
    return sum;
  }
  return 0;
}

int sumOfDiagonal(List<List<int>> matrix) {
  int sum = 0;
  for (var i = 0; i < matrix.length; i++) {
    sum += matrix[i][i];
  }
  return sum;
}

int sumOfAntidiagonal(List<List<int>> matrix) {
  int sum = 0;
  for (var i = 0; i < matrix.length; i++) {
    sum += matrix[i][matrix.length - i - 1];
  }
  return sum;
}
