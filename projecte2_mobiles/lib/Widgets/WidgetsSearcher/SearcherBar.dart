import 'package:flutter/material.dart';

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
