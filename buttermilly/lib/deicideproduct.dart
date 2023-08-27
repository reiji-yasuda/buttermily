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

      //home: Screen1(),

      home: PostPage(),
      //home: Accountprofiel(),
      // home: BottomNavBar(),
      //home: ChatScreen(),
      //home: GroupManu(),
      //home: GroupAccountPage(),
      //home: AccountEdit(),
      // home: FollowersPage(),
      // home: HomeScreen(),
    );
  }
}
