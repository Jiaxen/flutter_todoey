import 'package:flutter/foundation.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> task_list = [
    Task(label: 'Buy Milk', checked: false),
    Task(label: 'Buy Eggs', checked: true),
    Task(label: 'Buy Bread', checked: false),
  ];

    int get taskCount {
      return task_list.length;
    }

    int get openTaskCount {
        return task_list.where((element) => element.checked == false).length;
    }

    void addTask(String newTaskLabel) {
      task_list.add(Task(label: newTaskLabel));
    }
}