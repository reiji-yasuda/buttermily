import 'package:buttermilly/account/account.dart';
import 'package:buttermilly/account/account_edit.dart';
import 'package:buttermilly/bottombar.dart';
import 'package:buttermilly/followers_page/followers_page.dart';
import 'package:buttermilly/group/edit_group_screen.dart';
import 'package:buttermilly/group_account/group_account_page.dart';
import 'package:buttermilly/group_manu/group_manu.dart';
import 'package:buttermilly/login.dart';
import 'package:buttermilly/group/chat_screen.dart';
import 'package:buttermilly/group/home_screen.dart';
import 'package:camera/camera.dart';
import 'package:buttermilly/group/chat_screen.dart';
import 'package:buttermilly/group/vote_screen.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
// import 'bottombar.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //子widgetにデータを渡す
    return MaterialApp(
      title: 'Buttermily',
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [],

      //home: Screen1(),

      home: LoginPage(),
      //home: Accountprofiel(),
      // home: BottomNavBar(),
      //home: ChatScreen(),
      //home: GroupManu(),
      //home: GroupAccountPage(),
      //home: AccountEdit(),
      // home: FollowersPage(),

      // home: HomeScreen(),
//       home: FutureBuilder(
//         future: availableCameras(),
//         builder: (_, snapshot) {
//           final cameras = snapshot.data;
//           if (cameras == null) {
//             return Container();
//           }
//           return ChatScreen(
//             cameras: cameras,
//           );
//         },
//       ),
      // home: LoginPage(),
    );
  }
}
