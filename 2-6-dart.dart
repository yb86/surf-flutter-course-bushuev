// 1. Создайте текстовую переменную a = ‘hello world’; Напишите функцию, без возвращаемого значения. 
// Функция меняет порядок слов на обратный. Например было ‘hello world’, стало ‘world hello’

void main() {
String a = 'hello world';
void reverse() {
a = a.split(' ').reversed.join(' ');
}
reverse();
print(a);
}

// 2. Создайте и проинициализируйте массив чисел с произвольным размером. Напишите функцию, которая 
// вычисляет среднее арифметическое число массива и возвращает double результат. Распечатайте результат в консоли.

void main() {
final rnd = Random();
final nums = List.generate(10 + rnd.nextInt(10), (_) => rnd.nextInt(70));
double average() {
final int sum = nums.fold(0, (previousValue, element) => previousValue + element);
return sum / nums.length;
}
print(average());
}

// 3. Модернизируйте предыдущие функции так, чтобы на вход они принимали необходимые данные для работы. Параметр должен быть опциональным.

void main() {
  task1();
  task2();
}

void task1() {
  void reverse([String text = 'hello world']) {
    print(text.split(' ').reversed.join(' '));
  }
  reverse();
}

void task2() {
  double average([List<int> arr]) {
    if (arr == null) {
      return 0;
    }
    final int sum = arr.fold(0, (previousValue, element) => previousValue + element);
    return sum / arr.length;
  }
  print(average());
}

// 4. Напишите функцию решения квадратного уравнения, используя вложенные функции. Вычисление дискриминанта, нахождение x1 и x2 выполните во вложенных функциях. // Главная функция должна возвращать готовый результат. Функция возвращает ответ в строке (String). Есть три вида результата:
// 1. Уравнение не имеет решения так как его дискриминант меньше нуля;
// 2. Квадратное уравнение имеет единственное решение;
// 3. Квадратное уравнение имеет два разных корня.

import 'dart:math';

void main() {
print(solve(4, 5, -6));
print(solve(4, -2, 0.25));
print(solve(3, 4, 5));
}

String solve(double a, double b, double c) {
double findDiscriminant(double a, double b, double c) => b * b - 4 * a * c;
double root(double a, double b, double discriminantSquareRoot) => (-b + discriminantSquareRoot) / (2 * a);

final discriminant = findDiscriminant(a, b, c);
if (discriminant < 0) {
return 'Уравнение не имеет решения так как его дискриминант меньше нуля';
}

final discriminantSquareRoot = sqrt(discriminant);
if (discriminant == 0) {
return 'Квадратное уравнение имеет единственное решение: x = ${root(a, b, discriminantSquareRoot)}';
}

return 'Квадратное уравнение имеет два разных корня: x1 = ${root(a, b, discriminantSquareRoot)}, x2 = ${root(a, b, -discriminantSquareRoot)}';
}
