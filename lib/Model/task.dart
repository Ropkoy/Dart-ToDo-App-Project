// model/task.dart

class Task {
  final String name;
  final int id;
  bool isCompleted;

  Task({required this.name, required this.id, this.isCompleted = false});

  void toggleCompletion() {
    isCompleted = !isCompleted;
  }
}
