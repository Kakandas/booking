import 'package:booking/homepage.dart';
import 'package:flutter/material.dart';

class RequestPage extends StatefulWidget {
  const RequestPage({super.key});

  @override
  State<RequestPage> createState() => _RequestPageState();
}

class _RequestPageState extends State<RequestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(name: 'Request'),
      body: Container(
        padding: Paddings,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.only(left: 16, right: 16),
              decoration: BoxDecoration(
                  color: Color(0xffE6E6E6),
                  borderRadius: BorderRadius.circular(4)),
              height: 48,
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    suffixIcon: Icon(Icons.search_outlined),
                    hintText: 'Masukkan Pencarian'),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DropdownMenu(
                    width: (MediaQuery.of(context).size.width - 64) / 2 - 10,
                    hintText: 'Terbaru',
                    dropdownMenuEntries: [
                      DropdownMenuEntry(label: 'Text', value: 'Label')
                    ],
                  ),
                  DropdownMenu(
                    width: (MediaQuery.of(context).size.width - 64) / 2 - 10,
                    hintText: 'Semua',
                    dropdownMenuEntries: [
                      DropdownMenuEntry(label: 'Text', value: 'Label')
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            DropdownMenu(
              width: MediaQuery.of(context).size.width - 64,
              hintText: 'Ganti Jadwal',
              dropdownMenuEntries: [
                DropdownMenuEntry(label: 'Text', value: 'Label')
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: MyBottomBar(),
    );
  }
}
