import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Exploration!',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Space Exploration Planner!'),
      ),
      body: Column(
        children: const [
          Progress(),
          TaskList(),
        ],
      ),
    );
  }
}

class Progress extends StatelessWidget {
  const Progress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Column(
      children: const [
        Text('You are this far away from exploring the universe:'),
        LinearProgressIndicator(value: 0.3),
      ],
    );
  }
}

class TaskList extends StatelessWidget {
  const TaskList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Column(
      children: const [
        TaskItem(label: 'Load rocket with supplies'),
        TaskItem(label: 'Launch rocket'),
        TaskItem(label: 'Circle the home planet'),
        TaskItem(label: 'Head out to the first moon'),
        TaskItem(label: 'Launch moon lander #1'),
      ],
    );
  }
}

class TaskItem extends StatelessWidget {

  final String label;

  const TaskItem({Key? key, required this.label }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Row(
      children: [
        const Checkbox(value: false, onChanged: null),
        Text(label),
      ],
    );
  }

}


