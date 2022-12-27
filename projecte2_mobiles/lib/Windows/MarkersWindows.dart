import 'dart:developer';

import 'package:flutter/material.dart';

class MarkersWindows extends StatefulWidget {
  const MarkersWindows({
    Key? key,
  }) : super(key: key);

  @override
  State<MarkersWindows> createState() => _MarkersWindows();
}

class SearchSaver {
  String name;
  SearchSaver(this.name);
}

class _MarkersWindows extends State<MarkersWindows> {
  List<SearchSaver> saver = [];
  TextEditingController Scher = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 105, 105, 105),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 70,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(1000, 65, 65, 65),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: EdgeInsets.only(left: 12),
                    child: const Text(
                      "library",
                      style: TextStyle(
                        fontSize: 19,
                        color: Color.fromARGB(255, 231, 231, 192),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 783,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 65, 65, 65),
                ),
                child: ListView.builder(
                  itemCount: saver.length,
                  itemBuilder: (context, index) {
                    final slist = saver[index];
                    return ListTile(
                      title: Text("Name: ${slist.name}"),
                      onTap: () {
                        setState(() {});
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
