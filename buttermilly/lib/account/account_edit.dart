import 'package:flutter/material.dart';
import 'package:buttermilly/account/birthday.dart';

class AccountEdit extends StatelessWidget {
  AccountEdit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 1,
        backgroundColor: Colors.orange[100],
      ),
      body: Column(children: [
        SizedBox(
          height: 20.0,
        ),
        Center(
          child: CircleAvatar(
            radius: 30.0,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage('image/Ellipse11.png'),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Center(
          child: TextField(
            decoration: InputDecoration(
              labelText: "@username",
              hintTextDirection: null, //Icon(Icons.border_color_outlined),
            ),
          ),
        ),
        Center(
          child: TextField(
            decoration: InputDecoration(
              labelText: "name",
              hintTextDirection:
                  null, //Icon(Icons.border_color_outlined),kokokiku
            ),
          ),
        ),
        Center(
          child: TextField(
            decoration: InputDecoration(
              hintText: "自己紹介",
            ),
          ),
        ),
        InputBirthdayWidget()
      ]),
    );
  }
}
