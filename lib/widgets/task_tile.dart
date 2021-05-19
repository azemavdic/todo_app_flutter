import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  void checkboxCallback(newValue) {
    setState(() {
      isChecked = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Mlijeko',
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: TaskCheckBox(isChecked, checkboxCallback),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool checkedBoxState;
  final Function toggleCheckboxState;

  TaskCheckBox(this.checkedBoxState, this.toggleCheckboxState);
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkedBoxState,
      onChanged: toggleCheckboxState,
    );
  }
}
