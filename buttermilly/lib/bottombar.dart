import 'package:buttermilly/account/account.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:buttermilly/bottombar.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

//表示する画面のリスト
var _pages = <Widget>[];

@override
Widget build(BuildContext context) {
  return Scaffold(
    body: PersistentTabView(
      context,
      screens: _pages,
      items: [
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.home),
          activeColorPrimary: Colors.black,
          inactiveColorPrimary: Colors.white,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.comment),
          activeColorPrimary: Colors.black,
          inactiveColorPrimary: Colors.white,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.account_circle),
          activeColorPrimary: Colors.black,
          inactiveColorPrimary: Colors.white,
        ),
      ],
    ),
  );
}

// final StateProvider<int> bottomNavBarSelectedIndexProvider =
//     StateProvider((ref) => 0);

// class BottomNavbar extends HookConsumerWidget {
//   BottomNavbar({Key? key}) : super(key: key);

//   final Map<String, IconData> bottomIconList = {
//     "ホーム": Icons.home,
//     "チャット": Icons.comment,
//     "アカウント": Icons.account_circle,
//   };

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final bottomNavBarSelectedIndex =
//         ref.watch(bottomNavBarSelectedIndexProvider);
//     final bottomnavBarSelectedIndexNotifier =
//         ref.watch(bottomNavBarSelectedIndexProvider.notifier);
//     return BottomNavyBar(
//       items: [
//         for (int i = 0; i < bottomIconList.length; i++) ...{
//           BottomNavyBarItem(
//             title: Text(
//               bottomIconList.keys.toList()[i],
//             ),
//             icon: Icon(
//               bottomIconList.values.toList()[i],
//             ),
//           ),
//         }
//       ],
//       selectedIndex: bottomNavBarSelectedIndex,
//       onItemSelected: (index) {
//         var bottomNavBarSelectedIndexNotifier;
//         bottomNavBarSelectedIndexNotifier.state = index;
//       },
//     );
//   }
// }
