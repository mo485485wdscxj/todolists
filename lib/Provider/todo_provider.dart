import 'package:flutter/cupertino.dart';
import 'package:todo_list/Model/todo_model.dart';
import 'package:todo_list/Service/todo_service.dart';
import 'package:todo_list/Widget/todo_widget.dart';

class todoprovider extends ChangeNotifier {
  todomodel? datmodel;

  Future<void> futudata() async {
    datmodel = await todoservice.fethData();
    notifyListeners();
  }

  Future<void> addtask(String data) async {
    await todoservice.addItem(todo: data);

    // await fetchData();   //can i call getdata method to return data after store it

    datmodel?.task.add({
      "todo": data,
      "completed": false,
      "userId":1
    });
    datmodel?.total += 1;
    notifyListeners();
  }
}
