import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';
import 'tasks_tile.dart';

class TasksList extends StatelessWidget {
  final List<Task> tasks;
  final Function toggleTask;
  final Function(int) deleteTask;
  final Function(int, String) editTask;

  TasksList(this.tasks, this.toggleTask, this.deleteTask, this.editTask);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          index: index,
          deleteTask: deleteTask,
          editTask: editTask,
          taskTitle: tasks[index].name,
          isChecked: tasks[index].isDone,
          checkboxCallback: (bool? checkboxState) {
            toggleTask(index);
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}
