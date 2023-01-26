import 'dart:html';

import 'package:flutter/material.dart';
import 'package:projecte2_mobiles/Models/Searcher.dart';
import 'package:projecte2_mobiles/Widgets/WidgetsSearcher/Files.dart';
import 'package:projecte2_mobiles/Widgets/WidgetsSearcher/SearcherBar.dart';
import 'package:projecte2_mobiles/Widgets/ToolBar/ToolBar.dart';

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
              height: 50,
              child: SearchResults(),
            ),
            SearcherSnapshot(builder: (colecions) {
              return Column(children: [
                SizedBox(
                  height: 783,
                  child: ListView.builder(
                    padding: const EdgeInsets.all(5.0),
                    itemCount: colecions.length,
                    itemBuilder: (context, index) =>
                        ListSearcher(coleccions: colecions[index]),
                  ),
                ),
              ]);
            }),
          ],
        ),
      ),
    );
  }
}

class SearcherSnapshot extends StatelessWidget {
  final Widget Function(List<Coleccions>) builder;
  const SearcherSnapshot({super.key, required this.builder});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: getColeccions(),
      builder:
          (BuildContext context, AsyncSnapshot<List<Coleccions>> snapshot) {
        if (snapshot.hasError) {
          return ErrorWidget(snapshot.error.toString());
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        return builder(snapshot.data!);
      },
    );
  }
}
