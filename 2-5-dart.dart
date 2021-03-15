// 1. Используя switch, напишите программу в методе main(), которая выводит название месяца по номеру от 1 до 12.

 
void main() {
  int month = 3;

  switch (month) {
    case 1:
      print('Январь');
      break;

    case 2:
      print('Февраль');
      break;

    case 3:
      print('Март');
      break;

    case 4:
      print('Апрель');
      break;

    case 5:
      print('Май');
      break;

    case 6:
      print('Июнь');
      break;

    case 7:
      print('Июль');
      break;

    case 8:
      print('Август');
      break;

    case 9:
      print('Сентябрь');
      break;

    case 10:
      print('Октябрь');
      break;

    case 11:
      print('Ноябрь');
      break;

    case 12:
      print('Декабрь');
      break;

    default:
      print('Неверный номер месяца');
  }
}

// 2. Используя циклы, напишите программу, которая выводит на консоль все четные числа от 0 до 100.

  for (int num = 0; num <= 100; ++num) {if (num.isEven) {print(num);} }

// 3. Написать программу, которая слушает ввод в консоли, складывает вводимые пользователем числа. 
// Если пользователь ввел stop, завершить приложение. Если пользователь вводит некорректные данные - прервать текущую итерацию, начать заново.

import 'dart:convert';
import 'dart:io';

void main() {
  int res = 0;
  print(
      'Введите числа для добавления к результату. Для вывода результата введите "stop" ');
  do {
    final input = stdin.readLineSync(encoding: Encoding.getByName('utf-8'));
    if (input == 'stop') {
      break;
    }
    final int num = int.tryParse(input);
    if (num != null) {
      res += num;
    }
  } while (true);
  print('Сумма введенных чисел: $res');
}

