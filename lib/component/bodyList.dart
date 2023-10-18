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
        return Padding(
          padding: const EdgeInsets.all(5),
          child: InkWell(
            child: GetBuilder<Todo>(
              init: todos[index],
              builder: (Todo controller) => ListTile(
                leading: IconButton(
                  onPressed: () {
                    todos[index].isCircleChange();
                  },
                  icon: Icon(
                    todos[index].isCircle
                        ? Icons.check_circle
                        : Icons.circle_outlined,
                    color: todos[index].isCircle
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
                trailing: IconButton(
                  onPressed: () {
                    todos[index].isStarChange();
                  },
                  icon: Icon(
                    todos[index].isStar
                        ? Icons.star
                        : Icons.star_border_rounded,
                    color:
                        todos[index].isStar ? Colors.yellow[600] : Colors.grey,
                    size: 25,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
