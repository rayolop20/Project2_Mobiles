import 'package:flutter/material.dart';
import 'package:projecte2_mobiles/Widgets/ToolBar/ToolBar.dart';

class SearchWindows extends StatefulWidget {
  const SearchWindows({
    Key? key,
  }) : super(key: key);

  @override
  State<SearchWindows> createState() => _SearchWindows();
}

class _SearchWindows extends State<SearchWindows> {
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
            //Material(elevation: 40, child: Row( children: [TextField(controller: Scher)],),),
            const SizedBox(
              height: 600,
              child: SearchResults(),
            ),
            const SizedBox(
              height: 60,
              child: ToolBar(),
            )
          ],
        ),
      ),
    );
  }
}

class SearchResults extends StatelessWidget {
  const SearchResults({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(1000, 65, 65, 65),
      ),

    );
  }
}
