import 'package:flutter/material.dart';
import 'package:learning_flutter/task/task_item.dart';

import 'task_text_field.dart';

class TaskItems extends StatefulWidget {
  const TaskItems({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _TaskItemsState();
  }
}

class _TaskItemsState extends State<TaskItems> {
  
  final TextEditingController taskController = TextEditingController();
  final ScrollController scrollController = ScrollController();
  
  final List<String> tasks = [
    "Buy coffee!",
    "Item 1",
    "Item 2",
    "Item 3",
    "Item 4",
    "Item 5",
    "Item 6",
    "Item 7",
    "Item 8",
    "Item 9",
    "Item 10",
    "Item 11",
    "Item 12",
    "Item 13",
    "Item 14",
  ];

  @override
  void dispose() {
    taskController.dispose();
    scrollController.dispose();
    super.dispose();
  }

  void _addTask() {
    String task = taskController.text;
    if (task.isNotEmpty) {
      setState(() {
        tasks.insert(0, task);
      });
      taskController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (buildContext, index) {
                return TaskItem(tasks[index]);
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(12),
            child: TaskTextField(taskController, _addTask),
          )
        ],
      ),
    );
  }
}
