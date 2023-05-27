import 'dart:io';

void main() {
  List<String> elements = [];

  while (true) {
    print('-------- MENU --------');
    print('1. Insert Element');
    print('2. Delete Element');
    print('3. Update Element');
    print('4. View Elements');
    print('5. Exit');
    print('----------------------');
    stdout.write('Enter your choice: ');

    var choice = int.tryParse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        insertElement(elements);
        break;
      case 2:
        deleteElement(elements);
        break;
      case 3:
        updateElement(elements);
        break;
      case 4:
        viewElements(elements);
        break;
      case 5:
        exit(0);
        break;
      default:
        print('Invalid choice. Please try again.\n');
    }
  }
}

void insertElement(List<String> elements) {
  stdout.write('Enter the element to insert: ');
  var element = stdin.readLineSync()!;
  elements.add(element);
  print('Element inserted successfully.\n');
}

void deleteElement(List<String> elements) {
  stdout.write('Enter the index of the element to delete: ');
  var index = int.tryParse(stdin.readLineSync()!);

  if (index != null && index >= 0 && index < elements.length) {
    var deletedElement = elements.removeAt(index);
    print('Element "$deletedElement" deleted successfully.\n');
  } else {
    print('Invalid index. Please try again.\n');
  }
}

void updateElement(List<String> elements) {
  stdout.write('Enter the index of the element to update: ');
  var index = int.tryParse(stdin.readLineSync()!);

  if (index != null && index >= 0 && index < elements.length) {
    stdout.write('Enter the new value: ');
    var newValue = stdin.readLineSync()!;
    elements[index] = newValue;
    print('Element updated successfully.\n');
  } else {
    print('Invalid index. Please try again.\n');
  }
}

void viewElements(List<String> elements) {
  if (elements.isEmpty) {
    print('The array is empty.\n');
  } else {
    print('Array Elements:');
    for (var i = 0; i < elements.length; i++) {
      print('$i: ${elements[i]}');
    }
    print('');
  }
}

