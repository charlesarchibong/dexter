// ignore_for_file: non_constant_identifier_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ToDoScreen extends StatefulWidget {
  const ToDoScreen({Key? key}) : super(key: key);

  @override
  State<ToDoScreen> createState() => _ToDoScreenState();
}

class _ToDoScreenState extends State<ToDoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal[600],
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Title of New Task',
                    hintText: 'Enter New Task',
                  ),
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Required";
                    }
                    return null;
                  }),
              content: TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Description of New Task',
                    hintText: 'Explain New Task',
                  ),
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Required";
                    }
                    return null;
                  }),
              actions: [
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'CANCEL',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      ),
                    )),
                TextButton(
                  onPressed: null,
                  child: Text(
                    'SUBMIT',
                    style: TextStyle(
                      color: Colors.teal[600],
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        child: const Icon(
          Icons.add,
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.teal[600],
        centerTitle: true,
        title: const Text(
          'TODO',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 25,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Gap(10),
              Tasks(height: 72, taskTitle: 'call me', taskDescription: 'and you better...'),
              Tasks(height: 72, taskTitle: 'hey you', taskDescription: 'reply me asap'),
              Tasks(
                height: 72,
                taskTitle: 'give meds',
                taskDescription: 'freaking give meds',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Tasks extends StatefulWidget {
  final double height;
  final String taskTitle;
  final String taskDescription;

  const Tasks({
    required this.height,
    required this.taskTitle,
    required this.taskDescription,
  });

  @override
  State<Tasks> createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Container(
        width: double.infinity,
        height: widget.height,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: const Color(0xFF00897B),
          ),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Row(
          children: [
            Expanded(
              child: ListTile(
                leading: Checkbox(
                  checkColor: Colors.white,
                  activeColor: Colors.teal[600],
                  value: isChecked,
                  onChanged: (value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
                title: Text(
                  widget.taskTitle,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                subtitle: Text(
                  widget.taskDescription,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
