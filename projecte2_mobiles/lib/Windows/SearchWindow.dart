import 'dart:html';

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
            const SizedBox(
              height: 595,
              child: ListSearcher(),
            ),
          ],
        ),
      ),
    );
  }
}

class ListSearcher extends StatefulWidget {
  const ListSearcher({
    Key? key,
  }) : super(key: key);

  @override
  State<ListSearcher> createState() => _ListSearcherState();
}

class _ListSearcherState extends State<ListSearcher> {
  bool Guardat = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 65, 65, 65),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 70,
            child: Container(
              decoration: BoxDecoration(color: Colors.amber),
              child: GestureDetector(
                onTap: (() {
                  setState(() {
                    if (Guardat == false) {
                      Guardat = true;
                    } else {
                      Guardat = false;
                    }
                  });
                }),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 55,
                        height: 55,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          ),
                        ),
                      ),
                      Text("name"),
                      Icon(
                        (Guardat == true)
                            ? Icons.turned_in
                            : Icons.turned_in_not,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SearchResults extends StatefulWidget {
  const SearchResults({
    Key? key,
  }) : super(key: key);

  @override
  State<SearchResults> createState() => _SearchResultsState();
}

class _SearchResultsState extends State<SearchResults> {
  TextEditingController Searcher = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 113, 113, 113),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: Searcher,
              decoration: const InputDecoration(labelText: 'Buscar...'),
            ),
          ),
        ],
      ),
    );
  }
}
