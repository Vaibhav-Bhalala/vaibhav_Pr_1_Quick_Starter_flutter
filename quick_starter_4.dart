import 'dart:io';
void main() {
  List<List<int>> matrix1 = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
  ];

  List<List<int>> matrix2 = [
    [9, 8, 7],
    [6, 5, 4],
    [3, 2, 1],
  ];

  List<List<int>> result = addMatrices(matrix1, matrix2);

  printMatrix(matrix1, 'Matrix 1:');
  printMatrix(matrix2, 'Matrix 2:');
  printMatrix(result, 'Result:');
}

List<List<int>> addMatrices(List<List<int>> matrix1, List<List<int>> matrix2) {
  List<List<int>> result = [];

  for (int i = 0; i < matrix1.length; i++) {
    List<int> row = [];

    for (int j = 0; j < matrix1[i].length; j++) {
      int sum = matrix1[i][j] + matrix2[i][j];
      row.add(sum);
    }

    result.add(row);
  }

  return result;
}

void printMatrix(List<List<int>> matrix, String label) {
  print(label);

  for (int i = 0; i < matrix.length; i++) {
    for (int j = 0; j < matrix[i].length; j++) {
      stdout.write('${matrix[i][j]} ');
    }
    print('');
  }

  print('');
}
