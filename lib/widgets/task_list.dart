import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import 'package:todoey_flutter/model/task.dart';


class TaskList extends StatefulWidget {
  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> task_list = [
    Task(label: 'Buy Milk', checked: false),
    Task(label: 'Buy Eggs', checked: true),
    Task(label: 'Buy Bread', checked: false),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      itemCount: task_list.length,
      itemBuilder: (context, index) {
        return TaskTile(label: task_list[index].label, isChecked: task_list[index].checked, onChangeCheckboxState: (checkBoxState){
          setState(() {
            task_list[index].changeChecked();
          });
        });
      }
    );
  }
}

// ListView(
// padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
// children: <Widget>[
// TaskTile(),
// TaskTile(),
// ],
// );