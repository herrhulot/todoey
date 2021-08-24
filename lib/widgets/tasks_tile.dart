import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool? isChecked;
  final String taskTitle;
  final Function(bool?) checkboxCallback;
  //final Function(int) deleteTask;
  //final Function(int, String) editTask;
  //final int index;

  TaskTile({
    required this.isChecked,
    required this.taskTitle,
    required this.checkboxCallback,
    //required this.deleteTask,
    //required this.editTask,
    //required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            taskTitle,
            style: TextStyle(
                decoration:
                    isChecked ?? false ? TextDecoration.lineThrough : null),
          ),
          trailing: Checkbox(
            activeColor: Colors.lightBlueAccent,
            value: isChecked,
            onChanged: checkboxCallback,
          ),
        ),
        /* IconButton(
          onPressed: () {
            deleteTask(index);
          },
          icon: Icon(Icons.delete),
        ),
        IconButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => EditTask(taskTitle, index, editTask),
            );
          },
          icon: Icon(Icons.edit),
        ), */
      ],
    );
  }
}
