import 'package:flutter/material.dart';
import '../model/task.dart';

class TaskWidget extends StatelessWidget {
  final Task task;
  final Function(bool) onToggleCompleted;

  const TaskWidget({required this.task, required this.onToggleCompleted});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: task.isCompleted,
          onChanged: (newValue) => onToggleCompleted(newValue!),
        ),
        Text(task.name),
        IconButton(
          icon: const Icon(Icons.delete),
          onPressed: () {
            // Implement functionality to delete task (later)
          },
        ),
      ],
    );
  }
}
