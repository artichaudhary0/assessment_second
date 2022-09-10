import 'package:assessmentsecond/screens/hub_screen.dart';
import 'package:assessmentsecond/screens/user_account_screen.dart';
import 'package:assessmentsecond/screens/user_chat_screen.dart';
import 'package:assessmentsecond/screens/user_learning_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/user_home_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

int selectIndex = 0;

final List<Widget> _children = [
  UserHomeScreen(),
  UserLearningScreen(),
  const UserHubScreen(),
  const UserChatScreen(),
  UserAccountScreen(),
];

class _MyHomePageState extends State<MyHomePage> {
  void _navigatorBottomBar(int index) {
    setState(() {
      selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: _children[selectIndex]),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _navigatorBottomBar,
        currentIndex: selectIndex,
        fixedColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.book,
            ),
            label: "Learn",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.circle_grid_3x3,
            ),
            label: "Hub",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.chat_bubble,
            ),
            label: "Chat",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.profile_circled,
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
