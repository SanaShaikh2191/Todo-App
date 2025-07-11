import 'package:flutter/material.dart';
import 'package:todo/constants/colors.dart';
import 'package:todo/models/todo.dart';

class TodoItem extends StatelessWidget {
  const TodoItem({
    super.key,
    required this.todoo,
    this.onToDoChanged,
    this.onDeleteItem,
  });
  final ToDo todoo;
  final onToDoChanged;
  final onDeleteItem;
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(bottom: 10),
      child: ListTile(
        onTap: () {
          onToDoChanged(todoo);
        },
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: Colors.grey[200],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(20),
        ),
        leading: Icon(
          todoo.isDone
              ? Icons.check_box
              : Icons.check_box_outline_blank_outlined,
          color: tdBlue,
        ),

        title: Text(
          todoo.todotext,
          style: TextStyle(
            decoration: todoo.isDone ? TextDecoration.lineThrough : null,
            fontSize: 16,
          ),
        ),
        trailing: Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.symmetric(vertical: 12),
          width: 35,
          height: 30,
          decoration: BoxDecoration(
            color: tdRed,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            iconSize: 18,
            onPressed: () {
              onDeleteItem(todoo.id);
            },
            icon: Icon(Icons.delete, color: tdBgColor),
          ),
        ),
      ),
    );
  }
}
