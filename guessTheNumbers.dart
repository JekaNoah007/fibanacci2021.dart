import 'dart:io';

import 'dart:math';

void main() {
  startGame();
}

startGame() {
  stdout.write("Виберете режим игры: \n"
      "1)Компьютер угадывает число\n"
      "2)Пользователь угадывает число\n");
  int input = int.parse(stdin.readLineSync()!);
  if (input == 1) {
    comp();
  } else if (input == 2) {
    user();
  }
}

comp() {
  print("Компьютер будет угадывать число от 0 до 100");
  guessTheNumber();
}

user() {
  print("Пользователь загадал число от 0 до 100");
  newrand();
}

newrand() {
  var rand = new Random();
  int randomNum = rand.nextInt(100);
  print(randomNum);
  stdout.write('Это число?\n1) да\n2) нет\n');
  int choose = int.parse(stdin.readLineSync()!);
  switch (choose) {
    case 1:
      print('Компьютер угадал ваше число...');
      break;
    case 2:
      newrand();
  }
}

guessTheNumber() {
  int max = 100;
  int min = 0;
  int mid = 50;
  int steps = 0;

  forPrint() {
    print("это число $mid ?");
    var c = stdin.readLineSync();
    steps += 1;
    if (c == "l") {
      max = mid;
      mid = (mid + min) ~/ 2;
      forPrint();
    } else if (c == "g") {
      min = mid;
      mid = (max + mid) ~/ 2;
      forPrint();
    } else if (c == "d") {
      print("Ваше число это $mid  \n"
          "Вы выиграли за $steps (ход/хода/ходов)");
    }
  }
}







 // stdout.write("Выберете сложность игры: \n"
  //     "1) Легкий уровень \n"
  //     "2) Сложный уровень \n");
  // int level = int.parse(stdin.readLineSync()!);
  // switch (level) {
  //   case 1:
  //     print("Вы выбрали легкий уровень");
  //     int move = 0;