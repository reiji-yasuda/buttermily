import 'package:buttermilly/group/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import 'account/account.dart';
import 'group_manu/group_manu.dart';

class Bottom extends StatelessWidget{
   Bottom ({Key? key}) :super(key: key)

final _pages = {
  HomeScreen(),
  GroupManu(),
  Accountprofiel(),
};

  @override
  Widget build (BuildContext context){
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Colors.white
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.comment_outlined),
              activeIcon: Icon(Icons.comment),
              label: "Chat",
              backgroundColor: Colors.white
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
              activeIcon: Icon(Icons.account_circle),
              label: "Account",
              backgroundColor: Colors.white
            ),
          ],
        ),
    );
  }
}


