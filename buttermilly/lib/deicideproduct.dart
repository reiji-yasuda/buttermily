import 'package:buttermilly/account/account.dart';
import 'package:buttermilly/account/account_edit.dart';
import 'package:buttermilly/bottombar.dart';
import 'package:buttermilly/group/edit_group_screen.dart';
import 'package:buttermilly/group/home.dart';
import 'package:buttermilly/group/screen1.dart';
import 'package:buttermilly/login.dart';
import 'package:flutter/material.dart';

import 'bottombar.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //子widgetにデータを渡す
    return MaterialApp(
      title: 'Buttermily',
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [],
      //home: LoginPage(),
      home: Accountprofiel(),
      //home: ChatScreen(),
    );
  }
}
