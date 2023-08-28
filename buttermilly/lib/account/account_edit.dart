import 'package:buttermilly/account/account.dart';
import 'package:buttermilly/model/hayata1.dart';
import 'package:flutter/material.dart';
import 'package:buttermilly/account/birthday.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final _Edits = [TextEditingController];

final userDataProvider =
    StateNotifierProvider<UserDataNotifier, UserData>((ref) {
  return UserDataNotifier();
});

class UserData {
  UserData({
    required this.name,
    required this.username,
    required this.selfIntro,
  });

  String name;
  String username;
  String selfIntro;
}

class UserDataNotifier extends StateNotifier<UserData> {
  UserDataNotifier() : super(UserData(name: "", username: "", selfIntro: ""));

  void fillData(String name, String username, String selfIntro) {
    state.name = name;
    state.username = username;
    state.selfIntro = selfIntro;
  }
}

class AccountEdit extends ConsumerWidget {
  TextEditingController _textEditingname = TextEditingController();
  TextEditingController _textEditingusername = TextEditingController();
  TextEditingController _textEditingselfintro = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // UserData userData = ref.watch(userDataProvider);
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
        SizedBox(
          width: textwidth / 3 * 2,
          child: TextField(
            controller: _textEditingusername,
            decoration: InputDecoration(
              labelText: "@username",
              suffixIcon: Icon(Icons.border_color_outlined),
            ),
          ),
        ),
        SizedBox(
          width: textwidth / 3 * 2,
          child: TextField(
            controller: _textEditingname,
            decoration: InputDecoration(
                labelText: "name",
                suffixIcon: Icon(Icons.border_color_outlined)),
          ),
        ),
        SizedBox(
          width: textwidth / 3 * 2,
          child: TextField(
            controller: _textEditingselfintro,
            decoration: InputDecoration(
              hintText: "自己紹介",
            ),
          ),
        ),
        InputBirthdayWidget(),
        Padding(
          padding: EdgeInsets.only(top: 20, left: textwidth / 3.0),
        ),
        SizedBox(
          width: textwidth / 3,
          height: textheight / 20,
          child: ElevatedButton(
            onPressed: () {
              ref.read(userDataProvider.notifier).fillData(
                    _textEditingname.text,
                    _textEditingusername.text,
                    _textEditingselfintro.text,
                  );
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Accountprofiel(),
                ),
              );
            },
            child: Text('save'),
          ),
        ),
      ]),
    );
  }
}
