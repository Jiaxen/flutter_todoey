import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = true;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('This is a task',
          style: isChecked
              ? TextStyle(decoration: TextDecoration.lineThrough)
              : null),
      trailing: TaskCheckbox(
          isChecked: isChecked, changeCheckboxState: (bool? checkBoxState) {
        setState(() {
          isChecked = checkBoxState!;
        });
      }),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool isChecked;
  final void Function(bool?) changeCheckboxState;

  const TaskCheckbox(
      {required this.isChecked, required this.changeCheckboxState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: changeCheckboxState);
  }
}
