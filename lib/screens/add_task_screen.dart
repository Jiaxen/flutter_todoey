import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 5.0),
      child: Container(
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          SizedBox(height: 20),
          Text('Add Task',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.lightBlueAccent,
                  fontWeight: FontWeight.w600)),
          SizedBox(height: 20),
          TextField(autofocus: true),
          SizedBox(height: 20),
          TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.lightBlueAccent),
            ),
            child: Text('Add',
                textAlign: TextAlign.center, style: TextStyle(fontSize: 16)),
            onPressed: null,
          )
        ]),
      ),
    );
  }
}
