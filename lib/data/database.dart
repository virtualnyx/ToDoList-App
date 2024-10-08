import 'package:hive/hive.dart';

class ToDoDataBase {
  List toDoList = [];

  //reference our box
  final _myBox = Hive.box("mybox");

  //run this method if this is first time opening this app
  void createInitialData() {
    toDoList = [
      ["make Tutorial", false],
      ["Exercise", false],
    ];
  }

  //load the data from database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  //update the database
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
