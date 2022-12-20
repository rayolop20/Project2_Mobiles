import 'package:flutter/material.dart';
import 'package:projecte2_mobiles/ToolBar/ToolBar.dart';

class SearchWindows extends StatefulWidget {
  const SearchWindows({
    Key? key,
  }) : super(key: key);

  @override
  State<SearchWindows> createState() => _SearchWindows();
}

class _SearchWindows extends State<SearchWindows> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 105, 105, 105),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(1000, 65, 65, 65),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: EdgeInsets.only(left: 12),
                    child: const Text(
                      "Search",
                      style: TextStyle(
                        fontSize: 19,
                        color: Color.fromARGB(255, 231, 231, 192),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            Expanded(
              flex: 6,
              child: Container(),
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            const Expanded(
              flex: 1,
              child: ToolBar(),
            )
          ],
        ),
      ),
    );
  }
}
