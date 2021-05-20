import 'package:flutter/foundation.dart';
import 'package:todo_app/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'kajmak'),
    Task(name: 'mlijeko'),
    Task(name: 'jogurt'),
  ];

  int get taskCount {
    return tasks.length;
  }
}
