import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import 'package:todoey_flutter/model/task.dart';
import 'package:todoey_flutter/model/task_data.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
      return ListView.builder(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          itemCount: taskData.taskCount,
          itemBuilder: (context, index) {
            return TaskTile(label: taskData.task_list[index].label,
                isChecked: taskData.task_list[index].checked,
                onChangeCheckboxState: (checkBoxState){
              // setState(() {
              //   taskData.task_list[index].changeChecked();
              // });
            });
          }
      );
      },
    );
  }
}
