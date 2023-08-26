import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:buttermilly/bottombar.dart';

final StateProvider<int> bottomNavBarSelectedIndexProvider =
    StateProvider((ref) => 0);

class BottomNavbar extends HookConsumerWidget {
  BottomNavbar({Key? key}) : super(key: key);

  final Map<String, IconData> bottomIconList = {
    "ホーム": Icons.home,
    "チャット": Icons.comment,
    "アカウント": Icons.account_circle,
  };

  @override
  Widget build(BuildContext context, Widget ref) {
    final bottomNavBarSelectedIndex =
        ref.watch(bottomNavBarSelectedIndexProvider);
    final bottomnavBarSelectedIndexNotifier =
        ref.watch(bottomNavBarSelectedIndexProvider.notifier);
    return BottomNavBar(
      items: [
        for (int i = 0; i < bottomIconList.length; i++) ...{
          BottomNavyBarItem(
            title: Text(
              bottomIconList.keys.toList()[i],
            ),
            icon: Icon(
              bottomIconList.values.toList()[i],
            ),
          ),
        }
      ],
      selectedIndex: bottomNavBarSelectedIndex,
      onItemSelected: (index) {
        var bottomNavBarSelectedIndexNotifier;
        bottomNavBarSelectedIndexNotifier.state = index;
      },
    );
  }
}
