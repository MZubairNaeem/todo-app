import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ToDoList extends StatelessWidget {
  ToDoList(
      {Key? key,
      required this.taskName,
      required this.deleteFunction,
      required this.taskCompleted,
      required this.onChanged})
      : super(key: key);

  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
      ),
      child: Slidable(
        endActionPane: ActionPane(motion: const StretchMotion(), children: [
          SlidableAction(
            label: 'Remove',
            backgroundColor: Colors.indigo,
            onPressed: deleteFunction,
            icon: Icons.delete_forever_rounded,
            borderRadius: BorderRadius.circular(6),
          )
        ]),
        child: Card(
          color: Colors.white,
          elevation: 5,
          shadowColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Checkbox(
                  value: taskCompleted,
                  onChanged: onChanged,
                  activeColor: Colors.indigo,
                ),
                Text(
                  taskName,
                  style: TextStyle(
                      fontSize: 18,
                      decoration: taskCompleted
                          ? TextDecoration.lineThrough
                          : TextDecoration.none),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
