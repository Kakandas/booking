import 'package:booking/main.dart';
import 'package:booking/requestpage.dart';
import 'package:booking/schedulepage.dart';
import 'package:flutter/material.dart';

const Paddings = EdgeInsets.all(32);

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class MyBottomBar extends StatelessWidget {
  const MyBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(color: dimGrey, offset: const Offset(0, -0.5), blurRadius: 8)
      ], color: customWhite),
      height: 77,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.house_outlined,
                size: 32,
              )),
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return const SchedulePage();
                }));
              },
              icon: const Icon(Icons.calendar_month_outlined, size: 32)),
          IconButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return const RequestPage();
                }));
              },
              icon: const Icon(Icons.mail_outlined, size: 32)),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.domain_outlined, size: 32)),
        ],
      ),
    );
  }
}

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
        style: TextStyle(color: dimGrey, fontWeight: FontWeight.bold),
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

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const MyAppBar(
          name: 'Home',
        ),
        body: Column(mainAxisSize: MainAxisSize.max, children: [
          Container(
            padding: Paddings,
            child: Stack(children: [
              Card(
                semanticContainer: true,
                child: Image.asset(
                  'assets/image/banner.png',
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                height: 248,
                padding: const EdgeInsets.only(
                    top: 12, bottom: 12, left: 18, right: 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Kelas Berikutnya',
                      style: TextStyle(
                          color: customWhite,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Rekayasa Perangkat Lunak',
                      style: TextStyle(
                          color: customWhite,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'CR 201',
                      style: TextStyle(
                          color: customWhite,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Senin, 10:00 - 12:00',
                      style: TextStyle(
                          color: customWhite,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ),
            ]),
          ),
          const Divider(),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: Paddings,
            child: const Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Jadwal hari ini',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Rekayasa Perangkat Lunak',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 22),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'CR 101',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Senin, 10:00 -  12:00',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Rekayasa Perangkat Lunak',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 22),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'CR 101',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Senin, 10:00 -  12:00',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  )
                ]),
          )
        ]),
        bottomNavigationBar: const MyBottomBar());
  }
}
