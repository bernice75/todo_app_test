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

  void isCircleChange() {
    _isCircle = !_isCircle;
    update();
  }

  void isStarChange() {
    _isStar = !_isStar;
    update();
  }
}

class TodoList extends GetxController {
  RxList<Todo> todoList = [
    Todo(
      title: "tdtd",
      content: "lsls",
    ),
    Todo(
      title: "tdtd",
      content: "lsls",
    ),
  ].obs;
}
