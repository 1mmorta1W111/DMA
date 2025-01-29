// 10. Работа с коллекциями: Университет
// Создайте класс Student с полями name, group, grade.
// Создайте класс University, который содержит список студентов и методы для добавления студентов,
// сортировки по имени и фильтрации по успеваемости.

class Student {
  String name;
  String group;
  double grade;

  Student(this.name, this.group, this.grade);
}

class University {
  List<Student> students = [];

  void addStudent(Student student) {
    students.add(student);
  }

  void sortByName() {
    students.sort((a, b) => a.name.compareTo(b.name));
  }

  void filterByGrade(double minGrade) {
    students.where((student) => student.grade >= minGrade).forEach((student) {
      print("Студент: ${student.name}, Оценка: ${student.grade}");
    });
  }
}
