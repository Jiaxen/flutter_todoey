import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';


class TaskList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      children: <Widget>[
        TaskTile(),
        TaskTile(),
      ],
    );
  }
}

