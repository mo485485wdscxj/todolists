import 'package:dio/dio.dart';
import 'package:todo_list/Model/todo_model.dart';

class todoservice {
  static final Dio dio = Dio();
  static Map postData={'todo':' ','completed':false,'userId':1};

  static Future<todomodel> fethData() async {
      Response response = await dio.get('https://dummyjson.com/todos/user/1');
      return todomodel.gettodos(response.data);
  }

  static Future<void> addItem({required String todo}) async{

    postData['todo']=todo;
    
    await dio.post('https://dummyjson.com/todos/add'
        ,data:postData
      );
  }
}