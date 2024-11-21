import 'package:flutter/material.dart';
import '../widgets/task_list.dart';
import '../widgets/floating_add_button.dart';
import 'drawer_menu.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Today'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/id photo school hwang in yeop.png'),
          ),
        ],
      ),
      drawer: DrawerMenu(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              '26 Feb',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: TaskList(), // List of tasks
          ),
        ],
      ),
      floatingActionButton: FloatingAddButton(),
    );
  }
}