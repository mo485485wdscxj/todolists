class todomodel{
  List<dynamic>task;
  int total =0;
  todomodel({
    required this.task,required this.total
  });
  factory todomodel.gettodos(Map<String,dynamic>json){
    return todomodel(task:json['todos'], total: json['total']);
  }
}