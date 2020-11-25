import 'package:flutter/material.dart';
import 'package:todoey_flutter/components/tasks_item.dart';
import 'package:todoey_flutter/model/task_data.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
       return  ListView.builder(
         itemBuilder: (context, index){
           final task = taskData.tasks[index];
           return TasksItem(
             taskItemTitle: task.name,
             isChecked: task.isDone,
             setTaskItemState: (checkboxState) {
               taskData.updateTask(task);
             },
             removeTaskCallback: () {
               taskData.removeTask(task);
             },
           );
         },
         itemCount: taskData.taskCount,
        );
      },
    );
  }
}
