import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app_test/component/todo.dart';
import 'package:todo_app_test/todo_app.dart';

void main() {
  Get.put(TodoList());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'todo demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: const Color.fromARGB(255, 116, 137, 214),
      ),
      home: MyTodoApp(),
    );
  }
}
