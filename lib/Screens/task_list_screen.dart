import 'package:flutter/material.dart';
import '../model/task.dart';
import '../widget/task_widget.dart'; // Import corrected

class TaskListScreen extends StatefulWidget {
  const TaskListScreen({Key? key}) : super(key: key);

  @override
  _TaskListScreenState createState() => _TaskListScreenState();
}

class _TaskListScreenState extends State<TaskListScreen> {
  List<Task> tasks = [];
  int _currentId = 0;

  // Function to add a new task to the tasks list
  void addTask(String taskName) {
    setState(() {
      tasks.add(Task(
        id: _currentId,
        name: taskName,
        isCompleted: false,
      ));
      _currentId++; // Increment the ID for the next task
    });
  }

  // Function to toggle the completion status of a task
  void toggleCompletion(int index) {
    setState(() {
      tasks[index].toggleCompletion();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My TODO List'),
      ),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return TaskWidget(
            task: tasks[index],
            onToggleCompleted: (newValue) => toggleCompletion(index),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Show a dialog to add a new task
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text('Add Task'),
                content: TextField(
                  autofocus: true,
                  textInputAction: TextInputAction.done,
                  onSubmitted: (taskName) {
                    addTask(taskName);
                    Navigator.of(context).pop(); // Close the dialog
                  },
                ),
              );
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
