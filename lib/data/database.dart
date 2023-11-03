import 'package:hive/hive.dart';

class TodoDataBase {
  List todoList = [];

  final _my_box = Hive.box('lwp');

  void createInitialData() {
    todoList = [
      ["Make Tutorials", false],
      ["Do exercise", false]
    ];
  }

  void loadData() {
    todoList = _my_box.get("TODOLIST");
  }

  void updateDatabase() {
    _my_box.put("TODOLIST", todoList);
  }
}
