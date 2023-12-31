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
import 'package:buttermilly/group/chat_screen.dart';
import 'package:buttermilly/post_page/post_papge.dart';
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
      // reiji.yasuda.1029@gmail.com
      // Junji1018
      //home: Screen1(),
      //home: ChatScreen(),
      // home: Accountprofiel(),

      // home: BottomNavBar(),
      home: LoginPage(),
      // home: BottomNavBar(),
      //home: ChatScreen(),
      //home: GroupManu(),
      // home: ChatScreen(),
      //home: GroupAccountPage(),
      // home: AccountEdit(),
      // home: FollowersPage(),
      //home: PostPage(),

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
    );
  }
}
