import 'package:buttermilly/group/chat_screen.dart';
import 'package:buttermilly/group/edit_group_screen.dart';
import 'package:buttermilly/group/home_screen.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //子widgetにデータを渡す
    return MaterialApp(
      title: 'Buttermily',
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [],

      // home: HomeScreen(),
      home: FutureBuilder(
        future: availableCameras(),
        builder: (_, snapshot) {
          final cameras = snapshot.data;
          if (cameras == null) {
            return Container();
          }
          return ChatScreen(
            cameras: cameras,
          );
        },
      ),
      // home: LoginPage(),
    );
  }
}
