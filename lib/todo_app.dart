import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app_test/component/bodyList.dart';
import 'package:todo_app_test/component/todo.dart';

class MyTodoApp extends StatelessWidget {
  List<Todo> todos = TodoList().todoList;

  String title = "";
  String content = "";

  MyTodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("my todos"),
        backgroundColor: const Color.fromARGB(255, 116, 137, 214),
        elevation: 0,
        actions: [
          SizedBox(
            child: IconButton(
              onPressed: () {
                // 해당 아이콘 클릭하면 실행될 로직
              },
              icon: const Icon(
                Icons.supervised_user_circle_rounded,
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              // 해당 아이콘 클릭하면 실행할 로직
            },
            icon: const Icon(
              Icons.more_horiz_rounded,
            ),
          ),
          DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text("나의 to-do 추가"),
                actions: <Widget>[
                  TextField(
                    decoration: const InputDecoration(hintText: "to-do title"),
                    onChanged: (String value) {
                      title = value;
                    },
                  ),
                  TextField(
                    decoration:
                        const InputDecoration(hintText: "to-do content"),
                    onChanged: (String value) {
                      content = value;
                    },
                  ),
                  SizedBox(
                    height: 50,
                    child: TextButton(
                      onPressed: () {
                        todos.add(
                          Todo(
                            title: title,
                            content: content,
                          ),
                        );

                        Navigator.of(context).pop(); // input 입력 후 창 닫힘
                      },
                      child: const Text("add"),
                    ),
                  ),
                ],
              );
            },
          );
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: BodyList(
          todos: todos,
        ),
      ),
    );
  }
}
