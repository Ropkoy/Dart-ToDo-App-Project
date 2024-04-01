// Student class
class Student {
  String name;
  int age;
  String gradeLevel;

  // Constructor
  Student(this.name, this.age, this.gradeLevel);

  // Method to print student information
  void printInfo() {
    print('Student Information:');
    print('Name: $name');
    print('Age: $age');
    print('Grade Level: $gradeLevel');
  }
}

// Teacher class
class Teacher {
  String name;
  int age;
  String subject;

  // Constructor
  Teacher(this.name, this.age, this.subject);

  // Method to print teacher information
  void printInfo() {
    print('Teacher Information:');
    print('Name: $name');
    print('Age: $age');
    print('Subject: $subject');
  }
}

// Class to create student and teacher objects
class School {
  void createObjects() {
    // Create student object
    Student student = Student('Valentine Chebet', 27, 'MBA Student');
    // Create teacher object
    Teacher teacher = Teacher('Ms. Nderi', 43, 'Infomatics');

    // Call methods to print information
    student.printInfo();
    print('\n');
    teacher.printInfo();
  }
}

void main() {
  // Create school object
  School school = School();
  // Call method to create objects and print information
  school.createObjects();
}
