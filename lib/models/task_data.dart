import 'dart:collection';

import 'package:flutter/foundation.dart';

import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Köp glass'),
    Task(name: 'Koda flutter'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTaskTile) {
    final task = Task(name: newTaskTile);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toogleDone();
    notifyListeners();
  }

  void deleteTask(int index) {
    tasks.remove(index);
    notifyListeners();
  }

  /* void _editTask(int index, String newName) {
    setState(() {
      tasks[index].name = newName;
    });
  } */
}
