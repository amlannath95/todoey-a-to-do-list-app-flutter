import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:fltodoeyatodolistflutter/models/task_data.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          final task = taskData.tasks[index];
          return TaskTile(
            taskTitle: task.name,
            isChecked: task.isDone,
            checkBoxCallBack: (bool checkBoxState) {
              taskData.updateTask(task);
            },
          );
        },
        itemCount: taskData.taskCount,
      );
    });
  }
}
