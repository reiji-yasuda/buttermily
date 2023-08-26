import 'package:flutter/material.dart';
import 'package:untitled6/create_group_page/create_group_page.dart';
import 'package:untitled6/followers_page/followers_page.dart';
import 'package:untitled6/group_account/group_account_page.dart';
import 'package:untitled6/group_manu/group_manu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: CreateGroupPage());
  }
}
