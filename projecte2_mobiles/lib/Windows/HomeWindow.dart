import 'package:flutter/material.dart';
import 'package:projecte2_mobiles/Widgets/ToolBar/ToolBar.dart';
import 'package:projecte2_mobiles/Widgets/WidgetsHome/IconButton.dart';

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              height: 70,
              child: User(),
            ),
            SizedBox(
              height: 310,
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
                            text: "Recientes",
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
                          color: Color.fromARGB(1000, 140, 140, 140),
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
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 310,
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
                            text: "Moviments Artistics",
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
                        ),
                      ),
                    )
                  ],
                ),
              ),
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
