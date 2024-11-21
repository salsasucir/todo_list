import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/id photo school hwang in yeop.png'),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Menu',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.inbox),
              title: Text('Inbox'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text('Today'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.calendar_today),
              title: Text('Tomorrow'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.more_time),
              title: Text('Anytime'),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.circle, color: Colors.orange),
              title: Text('Landing Page Design'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.circle, color: Colors.blue),
              title: Text('Product Road Map'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.circle, color: Colors.green),
              title: Text('New Product Brand'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Home Screen Body Content'),
      ),
    );
  }
}