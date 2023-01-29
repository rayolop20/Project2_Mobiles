import 'package:flutter/material.dart';
import 'package:projecte2_mobiles/Widgets/WidgetsHome/BookHome.dart';

import 'package:projecte2_mobiles/Widgets/WidgetsHome/IconButton.dart';

import '../Models/Books.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  height: 70,
                  child: User(),
                ),
                const Padding(padding: EdgeInsets.only(top: 5)),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(1000, 65, 65, 65),
                    ),
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Row(
                          children: const [
                            Text.rich(
                              TextSpan(
                                text: "Recomendations",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 245, 245, 223),
                                    fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                        const Padding(padding: EdgeInsets.only(top: 5)),
                        Expanded(
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(232, 140, 140, 140),
                              borderRadius: BorderRadius.all(
                                Radius.circular(30),
                              ),
                            ),
                            padding: const EdgeInsets.all(7),
                            child: Container(
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(1000, 65, 65, 65),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30),
                                ),
                              ),
                              height: 783,
                              child: ListView.builder(
                                itemCount: 3,
                                itemBuilder: ((context, index) =>
                                    BookHome(book: bookList[index])),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const Padding(padding: EdgeInsets.only(top: 5)),
              ],
            );
          },
        ),
      ),
    );
  }
}
