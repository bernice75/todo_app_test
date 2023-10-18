import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app_test/component/todo.dart';

class BodyList extends StatelessWidget {
  List<Todo> todos;

  BodyList({
    super.key,
    required this.todos,
  });

  @override
  Widget build(BuildContext context) {
    Get.put(todos);

    return ListView.builder(
      itemCount: todos.length,
      itemBuilder: (BuildContext context, int index) {
        return GetBuilder<TodoList>(
          builder: (controller) => Padding(
            padding: const EdgeInsets.all(5),
            child: InkWell(
              child: ListTile(
                leading: IconButton(
                  onPressed: () {
                    controller.isCircleChange(controller.todoList[index]);
                  },
                  icon: Icon(
                    controller.todoList[index].isCircle
                        ? Icons.check_circle
                        : Icons.circle_outlined,
                    color: controller.todoList[index].isCircle
                        ? const Color.fromARGB(255, 116, 137, 214)
                        : Colors.grey,
                    size: 25,
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3),
                ),
                tileColor: Colors.white.withOpacity(0.85),
                title: Text(todos[index].title),
                subtitle: Text(todos[index].content),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    IconButton(
                      onPressed: () {
                        controller.isStarChange(controller.todoList[index]);
                      },
                      icon: Icon(
                        controller.todoList[index].isStar
                            ? Icons.star
                            : Icons.star_border_rounded,
                        color: controller.todoList[index].isStar
                            ? Colors.yellow[600]
                            : Colors.grey,
                        size: 25,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    IconButton(
                      onPressed: () {
                        controller.removeList(controller.todoList[index]);
                      },
                      icon: Icon(
                        Icons.delete_rounded,
                        color: Colors.red[400],
                        size: 25,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
