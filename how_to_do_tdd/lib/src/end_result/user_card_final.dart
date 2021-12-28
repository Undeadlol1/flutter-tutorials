import 'package:flutter/material.dart';

class User {
  final String name;
  final bool isAdmin;

  User({required this.name, this.isAdmin = false});
}

class UserCardFinal extends StatelessWidget {
  const UserCardFinal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.admin_panel_settings),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Username'),
            ),
            CircleAvatar(
              child: Image.network('https://i.pravatar.cc/150?img=6'),
            ),
          ],
        ),
      ),
    );
  }
}
