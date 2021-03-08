
// 1. Создать глобальную переменную типа int с именем a

int a = 5;


// 2. Создать локальную переменную типа double с именем b

double b = 5.1;
 
// 3. Создать строковую переменную с именем text  при помощи var, попытаться присвоить переменной a. Каков результат?
  
var text = 'text';
a = text // Error: A value of type 'String' can't be assigned to a variable of type 'int'.
 
// 4. Создать целочисленную переменную  с именем dyn при помощи dynamic, попытаться присвоить переменной строковое значение переменной text. Каков результат?

dynamic dyn = 7;
dyn = text; // переменная dyn поменяла значение
  
// 5. Создать переменную с именем fin  при помощи final и con при помощи const, попытаться изменить переменные, посмотреть результат. В чем отличия final от const?

final fin = 8;
const con = 9;
// final fin = 10; // Error: Can't assign to the final variable 'fin'
// const con = 11; // Error: Can't assign to the final variable 'con'
// переменные final и const не изменить
// отличие - const создаётся во время компиляции
  
// 6. Создать числовую переменную с именем a проверить является ли число четным.
 
int a = 22; 
if(a.isEven) {print('a is even');}
  
// 7. Используете 32-битный символ Unicode u2665 выведите сообщение в консоль: I ♥ dart
 
print('I \u2665 dart');
  
// 8. Выполните задания:
// a. Создать список var list =  [1,2,3,4,5,6,7,8] 

var list =  [1,2,3,4,5,6,7,8];
  
// b. Вывести длину этого списка.

 print(list.length);

// c. Вывести отсортированный список list в порядке убывания, используя sort.

list.sort((a, b) => b - a);
print(list);

// d. Вывести выделить подсписок newList  длиной в 3 элемента.

var newList = list.sublist(0, 3);
print(newList);

// c. Вывести индекс элемента со значением “5” в списке list.

print(list.indexOf(5));

// f. Удалить значения с 5 до 8 из списка list при помощи removeWhere и вывести в консоль.

list.removeWhere((item) => item >= 5 && item <= 8);
print(list);

// g. Заменить массив значениями [1,2,3] при помощи addAll в списке list на [10, 20, 30] и вывести в консоль.
// т.е. добавить в конце списка 10, 20, 30

list.addAll([10, 20, 30]);
print(list);

// 9. Выполните задания:
// a. Создать Map телефонных номеров с именем numberBook  и типом данных  (“имя”: “номер телефона”), заполнить данными: Иван : 2264865, Татьяна: 89523366684, Олег: 84952256575.

Map <String, int> numberBook = {
'Иван': 2264865,
'Татьяна': 89523366684,
'Олег': 84952256575
};

// b. Вывести на экран весь телефонный справочник numberBook.

print(numberBook);

// c. Вставить новый номер в карту: Екатерина:2359942 

numberBook.addAll({'Екатерина': 2359942});

// d. Отсортировать карту в обратном порядке по ключам и вывести на экран результат.

if(a.isEven) {print('a is even');}

// 10. Set
// a. Создать Set строк с именем mySet и данными {‘Москва’, ‘Вашингтон’, ‘Париж’}

Set mySet = {"Москва", "Вашингтон", "Париж"};

// b. Добавить в mySet  еще одно значение ‘Вашингтон’. Вывести длину списка(комментарием написать почему длина именно такая)

mySet.addAll({"Вашингтон"});
print(mySet.length); //длина 3, т.к. уникальное имя "Вашингтон" уже было в наборе

// c. Вывести на экран количество слов в тексте
// “She sells sea shells on the sea shore;
// The shells that she sells are sea shells I'm sure.
// So if she sells sea shells on the sea shore,
// I'm sure that the shells are sea shore shells”

