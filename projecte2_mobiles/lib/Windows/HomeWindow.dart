import 'package:flutter/material.dart';
import 'package:projecte2_mobiles/WidgetsHome/IconButton.dart';
import '../WidgetsHome/MovimentsArtistics.dart';
import '../WidgetsHome/Recientes.dart';
import '../WidgetsHome/ToolBar.dart';

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
          children: const [
            Expanded(
              flex: 1,
              child: User(),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Expanded(
              flex: 6,
              child: Recientes(),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Expanded(
              flex: 6,
              child: MovimentsArtistics(),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Expanded(
              flex: 1,
              child: ToolBar(),
            )
          ],
        ),
      ),
    );
  }
}
