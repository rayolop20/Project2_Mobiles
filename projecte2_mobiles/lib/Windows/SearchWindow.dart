import 'dart:html';

import 'package:flutter/material.dart';
import 'package:projecte2_mobiles/Models/Searcher.dart';
import 'package:projecte2_mobiles/Widgets/WidgetsSearcher/BooksWidget.dart';
import 'package:projecte2_mobiles/Widgets/ToolBar/ToolBar.dart';
import 'package:projecte2_mobiles/Windows/MarkersWindows.dart';

import '../Models/Books.dart';

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
        child: FutureBuilder(
          future: loadBooksList(),
          builder: (context, AsyncSnapshot<List<Books>> snapshot) {
            if (snapshot.hasError) {
              return ErrorWidget(snapshot.error.toString());
            }
            if (!snapshot.hasData) {
              return const Center(child: CircularProgressIndicator());
            }

            final bookList = snapshot.data!;
            return Column(
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
                SizedBox(
                  height: 783,
                  child: ListView.builder(
                    itemCount: bookList.length,
                    itemBuilder: ((context, index) => BookWidget(
                          book: bookList[index],
                        )),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
