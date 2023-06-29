import 'package:booking/main.dart';
import 'package:booking/mainpage.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class RequestPage extends StatefulWidget {
  const RequestPage({super.key});

  @override
  State<RequestPage> createState() => _RequestPageState();
}

class _RequestPageState extends State<RequestPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
          SizedBox(
            height: 24,
          ),
          Flexible(
            child: ListView.separated(
              itemCount: 5,
              itemBuilder: (context, index) {
                var textStyle = TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: customWhite);
                return InkWell(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            padding: EdgeInsets.all(24),
                            height: MediaQuery.of(context).size.height,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    InkWell(
                                        onTap: () {},
                                        child: Icon(
                                          Symbols.close,
                                          size: 32,
                                        )),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        InkWell(
                                          onTap: () {},
                                          child: Icon(
                                            Symbols.delete_outline,
                                            size: 32,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 12,
                                        ),
                                        InkWell(
                                          onTap: () {},
                                          child: Icon(
                                            Symbols.edit_square_rounded,
                                            size: 28,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          );
                        });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: indigoDye),
                    padding: EdgeInsets.symmetric(vertical: 24, horizontal: 32),
                    child: Row(children: [
                      Icon(Icons.radio_button_checked),
                      SizedBox(
                        width: 24,
                      ),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Nama',
                                  style: textStyle,
                                ),
                                Text(
                                  'Waktu',
                                  style: textStyle,
                                )
                              ],
                            ),
                            Text(
                              'D121211017',
                              style: textStyle,
                            ),
                            Divider(
                              color: customWhite,
                            ),
                            Text(
                              'Mata Kuliah',
                              style: textStyle,
                            ),
                          ],
                        ),
                      )
                    ]),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: 18,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
