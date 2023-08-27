import 'package:buttermilly/account/account.dart';
import 'package:buttermilly/model/hayata1.dart';
import 'package:flutter/material.dart';
import 'package:buttermilly/account/birthday.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final _Edits = [TextEditingController];

final sendProvider = StateProvider<String>((ref) => );

class AccountEdit extends StatefulWidget {
  @override
  _EditProfilePageState creatState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<AccountEdit> {
  TextEditingController _textEditingname = TextEditingController();
  TextEditingController _textEditingusername = TextEditingController();
  TextEditingController _textEditingselfintro = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final textwidth = size.width;
    final textheight = size.height;

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
            radius: 80.0,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage('image/Ellipse11.png'),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Center(
          child: TextField(
            controller: _textEditingusername,
            decoration: InputDecoration(
              labelText: "@username",
              icon: Icon(Icons.border_color_outlined),
            ),
          ),
        ),
        Center(
          child: TextField(
            controller: _textEditingname,
            decoration: InputDecoration(
              labelText: "name",
              icon: Icon(Icons.border_color_outlined),
            ),
          ),
        ),
        Center(
          child: TextField(
            controller: _textEditingselfintro,
            decoration: InputDecoration(
              hintText: "自己紹介",
            ),
          ),
        ),
        InputBirthdayWidget(), //koko
        Padding(
          padding: EdgeInsets.only(top: 20, left: textwidth / 3.0),
        ),
        SizedBox(
          width: textwidth / 3,
          height: textheight / 1000,
          child: ElevatedButton(
            onPressed: () {},
            child: Text('save'),
          ),
        ),
      ]),
    );
  }
}
