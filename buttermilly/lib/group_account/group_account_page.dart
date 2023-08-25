import 'package:flutter/material.dart';

class GroupAccountPage extends StatefulWidget {
  const GroupAccountPage({super.key});

  @override
  State<GroupAccountPage> createState() => _GroupAccountPageState();
}

class _GroupAccountPageState extends State<GroupAccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView(
          children: const [
            Row(
              children: [
                CircleAvatar(
                  radius: 50,
                ),
                Icon(Icons.add),
                SizedBox(
                  width: 30,
                ),
                Column(
                  children: [
                    Text(
                      'Family',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    Row(
                      children: [
                        Text('@famillygroup'),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.mode_edit,
                          size: 15,
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ));
  }
}
