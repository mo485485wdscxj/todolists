import 'package:flutter/material.dart';

class todowidget extends StatelessWidget {

  String task;
  todowidget({
    required this.task
});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(task,style:const TextStyle(fontWeight: FontWeight.bold,fontSize:20),),
    );
  }
}
