import 'package:get/get.dart';

class Todo extends GetxController {
  bool _isCircle = false;
  bool _isStar = false;
  final String title;
  final String content;
  bool get isCircle => _isCircle;
  bool get isStar => _isStar;

  Todo({
    required this.title,
    required this.content,
  });
}

class TodoList extends GetxController {
  List<Todo> todoList = [];

  addList(Todo item) {
    todoList.add(item);
    update();
  }

  removeList(Todo item) {
    todoList.remove(item);
    update();
  }

  isCircleChange(Todo item) {
    item._isCircle = !item._isCircle;
    update();
  }

  isStarChange(Todo item) {
    item._isStar = !item._isStar;
    update();
  }
}
