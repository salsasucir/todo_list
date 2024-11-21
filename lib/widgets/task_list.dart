import 'package:flutter/material.dart';

class TaskList extends StatelessWidget {
  final List<Map<String, String>> tasks = [
    {"title": "Balas pesan email", "time": "10:17am", "category": "#Pekerjaan"},
    {"title": "Belanja di supermarket", "time": "11:30am", "category": "#Belanja"},
    {"title": "Telepon ibu dan saudara perempuan", "time": "1:00pm", "category": "#Keluarga"},
    {"title": "Pertemuan dengan Lissa", "time": "3:00pm", "category": "#Pekerjaan"},
    {"title": "Organisir struktur proyek baru", "time": "4:20pm", "category": "#Pekerjaan"},
    {"title": "Makan malam di rumah saudara saya", "time": "8:00pm", "category": "#Keluarga"},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        final task = tasks[index];
        return ListTile(
          title: Text(task['title']!),
          subtitle: Text('${task['time']}  ${task['category']}'),
          leading: CircleAvatar(
            backgroundColor: Colors.grey[200],
            backgroundImage: AssetImage('assets/images/id photo school hwang in yeop.png'),
          ),
          onTap: () {

          },
        );
      },
    );
  }
}