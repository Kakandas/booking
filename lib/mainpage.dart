import 'package:booking/main.dart';
import 'package:booking/requestpage.dart';
import 'package:booking/schedulepage.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';

const Paddings = EdgeInsets.all(32);
TextStyle bottomNavBarText =
    TextStyle(color: indigoDye, fontSize: 14, fontWeight: FontWeight.bold);

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(50);

  const MyAppBar({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 5,
      automaticallyImplyLeading: false,
      backgroundColor: customWhite,
      title: Text(
        name,
        style: TextStyle(color: indigoDye, fontWeight: FontWeight.bold),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_outlined,
              color: dimGrey,
            )),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.person,
              color: dimGrey,
            ))
      ],
    );
  }
}

class MainPage extends StatefulWidget {
  MainPage({super.key});
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentPage = 0;

  static const List<Widget> _pages = <Widget>[
    HomePage(),
    SchedulePage(),
    RequestPage()
  ];

  void changePage(currentIndex) {
    setState(() {
      currentPage = currentIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        name: 'Home',
      ),
      body: Center(child: _pages.elementAt(currentPage)),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: indigoDye,
          currentIndex: currentPage,
          onTap: changePage,
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.home,
                  size: 32,
                ),
                icon: Icon(
                  Icons.home_outlined,
                  size: 32,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.calendar_month,
                  size: 32,
                ),
                icon: Icon(
                  Icons.calendar_month_outlined,
                  size: 32,
                ),
                label: 'Schedule'),
            BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.mail,
                  size: 32,
                ),
                icon: Icon(
                  Icons.mail_outline,
                  size: 32,
                ),
                label: 'Request'),
            BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.domain,
                  size: 32,
                ),
                icon: Icon(
                  Icons.domain_outlined,
                  size: 32,
                ),
                label: 'Classroom')
          ]),
    );
  }
}
