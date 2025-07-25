import 'dart:io';

void main() async {
  String filePath = 'euler_22/names.txt';
  String fileContent;

  try {
    fileContent = await File(filePath).readAsString();
  } catch (e) {
    print(e);
    return;
  }

  List<String> names = fileContent
      .replaceAll('"', '')
      .split(',');

  names.sort();

  int totalScore = 0;

  for (int i = 0; i < names.length; i++) {
    String name = names[i];
    int alphabeticalValue = calculateAlphabeticalValue(name);
    int alphabeticalPosition = i + 1;
    int nameScore = alphabeticalValue * alphabeticalPosition;
    totalScore += nameScore;
  }

  print(totalScore);
}

int calculateAlphabeticalValue(String name) {
  int value = 0;
  for (int i = 0; i < name.length; i++) {
    String char = name[i];
    // Karakterin ASCII değerini al ve 'A'nın ASCII değerinden çıkar +1
    value += char.codeUnitAt(0) - 'A'.codeUnitAt(0) + 1;
  }
  return value;
}