import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String _email = '';
  String _password = '';

  final _tab = <Tab> [
    Tab( text:'新規登録'),
    Tab( text:'ログイン'),
  ];
  // Widget build(BuildContext context) {
  //   return DefaultTabController(
  //     length: _tab.length,
  //     child: Scaffold(
  //       appBar: AppBar(
  //         title: const Text('TabBar'),
  //         bottom: TabBar(
  //           tabs: _tab,
  //         ),
  //       ),
  //       body: TabBarView(
  //           children: <Widget> [
  //             TabPage(title: '新規登録'),
  //             TabPage(title: 'ログイン'),
  //           ]
  //       ),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tab.length,
      child: Scaffold(
        appBar: AppBar(

          title: const Text('buttermily'),
          bottom: TabBar(
          tabs: _tab,
          ),
        ),
        body: TabBarView(
          children:  <Widget> [
            _registerWidget(),
            _loginWidget(),
          ],
        ),
      ),
    );
  }  

  Widget _registerWidget(){
    return Center(
              child: Container(
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // 1行目 メールアドレス入力用テキストフィールド
                    TextFormField(
                      decoration: const InputDecoration(labelText: 'メールアドレス'),
                      onChanged: (String value) {
                        setState(() {
                          _email = value;
                        });
                      },
                    ),
                    // 2行目 パスワード入力用テキストフィールド
                    TextFormField(
                      decoration: const InputDecoration(labelText: 'パスワード'),
                      obscureText: true,
                      onChanged: (String value) {
                        setState(() {
                          _password = value;
                        });
                      },
                    ),
                    ElevatedButton(
                      child: const Text('ユーザ登録'),
                      onPressed: () async {
                        try {
                          final User? user = (await FirebaseAuth.instance
                                  .createUserWithEmailAndPassword(
                                      email: _email, password: _password))
                              .user;
                          if (user != null)
                            print("ユーザ登録しました ${user.email} , ${user.uid}");
                        } catch (e) {
                          print("ユーザーネームは13文字以内で英数字とアンダーバー(_)のみでご記入ください");
                        }
                      },

                    ),

                  ],
                ),
              ),
            );
  }
  Widget _loginWidget(){
    return Center(
              child: Container(
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // 1行目 メールアドレス入力用テキストフィールド
                    TextFormField(
                      decoration: const InputDecoration(labelText: 'メールアドレス'),
                      onChanged: (String value) {
                        setState(() {
                          _email = value;
                        });
                      },
                    ),
                    // 2行目 パスワード入力用テキストフィールド
                    TextFormField(
                      decoration: const InputDecoration(labelText: 'パスワード'),
                      obscureText: true,
                      onChanged: (String value) {
                        setState(() {
                          _password = value;
                        });
                      },
                    ),
                    ElevatedButton(
                      child: const Text('ログイン'),
                      onPressed: () async {
                        try {
                          // メール/パスワードでログイン
                          final User? user = (await FirebaseAuth.instance
                                  .signInWithEmailAndPassword(
                                      email: _email, password: _password))
                              .user;
                          if (user != null)

                            print("ログインに成功しました。 ${user.email} , ${user.uid}");
                        } catch (e) {
                          print("ログインに失敗しました");
                        }
                      },
                    ),
                    ElevatedButton(
                      child: const Text('パスワードリセット'),
                      onPressed: () async {
                        try {
                          await FirebaseAuth.instance
                              .sendPasswordResetEmail(email: _email);
                          print("パスワードリセット用のメールを送信しました");
                        } catch (e) {
                          print(e);
                        }
                    }),
                  ],
                ),
              ),
            );
  }
}