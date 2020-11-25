import 'package:flutter/material.dart';

class TasksItem extends StatelessWidget {
  final String taskItemTitle;
  final bool isChecked;
  final Function setTaskItemState;
  final Function removeTaskCallback;

  TasksItem({this.taskItemTitle, this.isChecked, this.setTaskItemState, this.removeTaskCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile (
      onLongPress: removeTaskCallback,
      title: Text(
        taskItemTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: setTaskItemState,
      ),
    );
  }
}


