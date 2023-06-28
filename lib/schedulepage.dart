import 'package:booking/homepage.dart';
import 'package:booking/main.dart';
import 'package:flutter/material.dart';

TextStyle myTileTrailingStyle =
    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold);

TextStyle myTileLeadingStyle =
    const TextStyle(fontSize: 14, fontWeight: FontWeight.bold);

TextStyle myDayStyle =
    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold);

class SchedulePage extends StatefulWidget {
  const SchedulePage({super.key});

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        name: 'Schedule',
      ),
      body: Container(
        padding: Paddings,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Senin',
                    style: myDayStyle,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  ListTile(
                    onTap: () {
                      showModalBottomSheet(
                          shape: const RoundedRectangleBorder(
                              side: BorderSide(),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12),
                                  topRight: Radius.circular(12))),
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              padding: const EdgeInsets.all(18),
                              height: MediaQuery.of(context).size.height * .3,
                              width: MediaQuery.of(context).size.width * .9,
                              child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: 50,
                                      child: Divider(
                                        height: 3,
                                        color: grey,
                                      ),
                                    ),
                                    const ListTile(
                                      leading:
                                          Icon(Icons.calendar_month_outlined),
                                      title: Text('Rekayasa Perangkat Lunak'),
                                      subtitle:
                                          Text('Wednesday, 07:30 - 10:00'),
                                    ),
                                    const ListTile(
                                      leading:
                                          Icon(Icons.notifications_outlined),
                                      title: Text('30 Minutes Before'),
                                    ),
                                    const ListTile(
                                      leading: Icon(Icons.location_on_outlined),
                                      title: Text('CR 201'),
                                    ),
                                  ]),
                            );
                          });
                    },
                    tileColor: customWhite,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: BorderSide(color: indigoDye, width: 2)),
                    title: Text(
                      'CR 101',
                      style: myTileLeadingStyle,
                    ),
                    trailing: Text(
                      'Rekayasa Perangkat Lunak',
                      style: myTileTrailingStyle,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  ListTile(
                    tileColor: customWhite,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: BorderSide(color: indigoDye, width: 2)),
                    title: Text(
                      'CR 101',
                      style: myTileLeadingStyle,
                    ),
                    trailing: Text(
                      'Rekayasa Perangkat Lunak',
                      style: myTileTrailingStyle,
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Senin',
                    style: myDayStyle,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  ListTile(
                    tileColor: customWhite,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: BorderSide(color: indigoDye, width: 2)),
                    title: Text(
                      'CR 101',
                      style: myTileLeadingStyle,
                    ),
                    trailing: Text(
                      'Rekayasa Perangkat Lunak',
                      style: myTileTrailingStyle,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  ListTile(
                    tileColor: customWhite,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: BorderSide(color: indigoDye, width: 2)),
                    title: Text(
                      'CR 101',
                      style: myTileLeadingStyle,
                    ),
                    trailing: Text(
                      'Rekayasa Perangkat Lunak',
                      style: myTileTrailingStyle,
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Senin',
                    style: myDayStyle,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  ListTile(
                    tileColor: customWhite,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: BorderSide(color: indigoDye, width: 2)),
                    title: Text(
                      'CR 101',
                      style: myTileLeadingStyle,
                    ),
                    trailing: Text(
                      'Rekayasa Perangkat Lunak',
                      style: myTileTrailingStyle,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  ListTile(
                    tileColor: customWhite,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: BorderSide(color: indigoDye, width: 2)),
                    title: Text(
                      'CR 101',
                      style: myTileLeadingStyle,
                    ),
                    trailing: Text(
                      'Rekayasa Perangkat Lunak',
                      style: myTileTrailingStyle,
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Senin',
                    style: myDayStyle,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  ListTile(
                    tileColor: customWhite,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: BorderSide(color: indigoDye, width: 2)),
                    title: Text(
                      'CR 101',
                      style: myTileLeadingStyle,
                    ),
                    trailing: Text(
                      'Rekayasa Perangkat Lunak',
                      style: myTileTrailingStyle,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  ListTile(
                    tileColor: customWhite,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: BorderSide(color: indigoDye, width: 2)),
                    title: Text(
                      'CR 101',
                      style: myTileLeadingStyle,
                    ),
                    trailing: Text(
                      'Rekayasa Perangkat Lunak',
                      style: myTileTrailingStyle,
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const MyBottomBar(),
    );
  }
}
