import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile({
    this.label, required this.isChecked, required this.onChangeCheckboxState
  });

  String? label;
  late bool isChecked;
  late void Function(bool?) onChangeCheckboxState;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(label ?? '',
          style: isChecked
              ? TextStyle(decoration: TextDecoration.lineThrough)
              : null),
      trailing: TaskCheckbox(
          isChecked: isChecked, changeCheckboxState: onChangeCheckboxState),
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
