import 'dart:io';

// Base class
class Car {
  String model;
  String color;

  Car(this.model, this.color);

  void start() {
    print('Car started');
  }

  void stop() {
    print('Car stopped');
  }
}

// Derived class
class ElectricCar extends Car {
  ElectricCar(String model, String color) : super(model, color);

  @override
  void start() {
    super.start();
    print('Electric car started');
  }
}

// Function to read data from CSV file and initialize instance
Car carFromFile(String filename) {
  try {
    File file = File(filename);
    List<String> lines = file.readAsLinesSync();

    // Assuming CSV format: model,color
    List<String> data = lines.first.split(',');

    String model = data[0];
    String color = data.length > 1 ? data[1] : 'Unknown';

    return Car(model, color);
  } catch (e) {
    print('Error initializing car from file: $e');
    return Car('Unknown', 'Unknown');
  }
}

// Method demonstrating the use of a loop
void loopExample() {
  for (int i = 0; i < 3; i++) {
    print('Loop iteration $i');
  }
}

void main() {
  // Create instance of ElectricCar
  ElectricCar electricCar = ElectricCar('Tesla', 'Red');
  electricCar.start();
  electricCar.stop();

  // Create instance of CarFromFile
  Car car = carFromFile('car_data.csv');
  print('Car model: ${car.model}');
  print('Car color: ${car.color}');

  // Demonstrating the use of a loop
  loopExample();
}
