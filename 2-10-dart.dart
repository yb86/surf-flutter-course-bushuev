
// 1. Реализуйте класс Student (Студент), который будет наследоваться от класса User. Класс должен иметь следующие свойства:
// •	yearOfAdmission:DateTime (год поступления в вуз): инициализируется в конструкторе 
// •	currentCourse:int (текущий курс): рассчитывается след. образом - из текущего года вычесть год поступления. чтобы получить годы из DateTime, воспользуйтесь свойством DateTime.year
//Класс должен иметь метод toString() , с помощью которого можно вывести:
// •	имя и фамилию студента - используя родительскую реализацию toString
// •	год поступления
// •	текущий курс

void main() {
	  print(Student('Иванов', 'Степан', 2019));
	}
	
	class User {
	  final String firstName;
	  final String lastName;
	
	  User(this.firstName, this.lastName);
	
	  String get fullName => '$firstName $lastName';
	
	  @override
	  String toString() {
	    return fullName;
	  }
	}
	
	class Student extends User {
	  final int yearOfAdmission;
	
	  int get currentCourse => 1 + DateTime.now().year - yearOfAdmission;
	
	  Student(
	    String firstName,
	    String lastName,
	    this.yearOfAdmission,
	  )   : assert(yearOfAdmission <= DateTime.now().year),
	        super(firstName, lastName);
	
	  @override
	  String toString() {
	    return 'имя и фамилия студента: $fullName, год поступления: $yearOfAdmission, текущий курс: $currentCourse';
	  }
	}


//2. Есть базовый класс Car, с базовыми свойствами для всех машин
// abstract class Car {
//   double weight;
//   void run();
//   }
// Есть два наследника Грузовик и Спорткар
// class Truck extends Car {
//   @override
//   double get weight => 10;  
//   @override
//   void run() {  }
// }
// class Sportcar extends Car {
//   @override
//   double get weight => 2;  
//   @override
//   void run() {  }
// }
// И есть велосипед
// class Bike{}
// Велосипеды и автомобили являются разными видами транспорта, с различными свойствами. Но, и велосипед и автомобили можно покрасить краской! Необходимо написать миксин, устанавливающий на выбор один из трех цветов для транспортного средства:
// Создайте enum Colors с цветами red, green, blue
// Создайти миксин Painter с свойством colorName:String и методом setColor(Colors color). В зависимости от значения enum, метод устанавливает название цвета 'red', 'green', 'blue'
// Примените миксин к транспортным средствам и инициализируйте покраску в конструкторе класса.
// Переопределите метод toString, чтобы он выводил "Грузовик color_name цвета"
// Транспортные средства, наследуемые от класса Car приходят в движения от двигателя внутреннего сгорания. На велосипед двигатель установить нельзя.
// Напишите миксин, который реализует двигатель только у наследников Car
// Задайте свойство enginePower: int  с произвольным значением - мощность двигателя
// Напишите функцию runEngine которая выводит строку "Двигатель работает. Максимальная скорость = мощности двигателя / вес автомобиля.
// В Truck и SportCar в методе run выполните метод runEngine

abstract class Car with Painter {
  double weight;
  void run();
}

class Truck extends Car {
  Truck() {
    setColor(Colors.blue);
  }

  @override
  double get weight => 10;

  @override
  void run() {}

  @override
  String toString() => "Грузовик $colorName";
}

class Sportcar extends Car {
  @override
  double get weight => 2;

  @override
  void run() {}

  Sportcar() {
    setColor(Colors.red);
  }

  String toString() => "Спорткар $colorName";
}

enum Colors { red, green, blue }

mixin Painter {
  String colorName;

  setColor(Colors color) {
    switch (color) {
      case Colors.red:
        colorName = 'red';
        break;
      case Colors.green:
        colorName = 'green';
        break;
      case Colors.blue:
        colorName = 'blue';
        break;
    }
  }
}

class Bike with Painter {
  Bike() {
    setColor(Colors.green);
  }

  String toString() => "Велосипед $colorName";
}

void main() {
  print(Truck());
  print(Sportcar());
  print(Bike());
}

// 3. Используя обобщения написать класс с методом, приводящим полученное значение в строку.

void main() {
  print(Convertor<String>('Строка'));
  print(Convertor<int>(0));
  print(Convertor(bool));
}

class Convertor<T> {
  String _convertedValue;

  Convertor(T value) {
    _convertedValue = convertToString(value);
  }

  String convertToString(T value) => value.toString();

  @override
  String toString() => 'Полученное значение: $_convertedValue';
}
