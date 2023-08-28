import 'package:buttermilly/account/account.dart';
import 'package:buttermilly/group/home_screen.dart';
import 'package:buttermilly/group_manu/group_manu.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

//表示する画面のリスト
var _pages = <Widget>[
  HomeScreen(),
  GroupManu(),
  Accountprofiel(),
];

class BottomNavBar extends StatelessWidget {
  BottomNavBar({Key? key}) : super(key: key);

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
            inactiveColorPrimary: Colors.grey,
          ),
          PersistentBottomNavBarItem(
            icon: const Icon(Icons.comment),
            activeColorPrimary: Colors.black,
            inactiveColorPrimary: Colors.grey,
          ),
          PersistentBottomNavBarItem(
            icon: const Icon(Icons.account_circle),
            activeColorPrimary: Colors.black,
            inactiveColorPrimary: Colors.grey,
          ),
        ],
        navBarStyle: NavBarStyle.simple,
        backgroundColor: Colors.white,
        decoration: NavBarDecoration(
          border: Border.all(
            width: 1,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
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
