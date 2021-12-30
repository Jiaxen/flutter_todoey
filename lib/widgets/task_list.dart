import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import 'package:todoey_flutter/model/task.dart';


class TaskList extends StatefulWidget {
  const TaskList({this.taskList = const []});
  final List<Task> taskList;

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      itemCount: widget.taskList.length,
      itemBuilder: (context, index) {
        return TaskTile(label: widget.taskList[index].label, isChecked: widget.taskList[index].checked, onChangeCheckboxState: (checkBoxState){
          setState(() {
            widget.taskList[index].changeChecked();
          });
        });
      }
    );
  }
}
