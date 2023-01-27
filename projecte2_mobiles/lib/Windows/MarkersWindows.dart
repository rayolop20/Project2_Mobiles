import 'package:flutter/material.dart';
import 'package:projecte2_mobiles/Models/Guardats.dart';
import 'package:projecte2_mobiles/Widgets/WidgetsMarkers/Markers.dart';

import 'SearchWindow.dart';

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
            MarkerSnapshot(builder: (guardatf) {
              return Column(children: [
                SizedBox(
                  height: 783,
                  child: ListView.builder(
                    padding: const EdgeInsets.all(5.0),
                    itemCount: guardatf.length,
                    itemBuilder: (context, index) =>
                        ListMarkers(eguardats: guardatf[index]),
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

class MarkerSnapshot extends StatelessWidget {
  final Widget Function(List<ElementsGuardats>) builder;
  const MarkerSnapshot({super.key, required this.builder});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: getMColeccions(),
      builder: (BuildContext context,
          AsyncSnapshot<List<ElementsGuardats>> snapshot) {
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
