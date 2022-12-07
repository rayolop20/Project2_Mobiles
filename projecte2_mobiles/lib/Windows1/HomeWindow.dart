import 'package:flutter/material.dart';
import 'WidgetsHome/MovimentsArtistics.dart';
import 'WidgetsHome/Recientes.dart';
import 'WidgetsHome/ToolBar.dart';

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
      appBar: AppBar(
        title: const Text.rich(
          TextSpan(
            text: "Application",
            style: TextStyle(color: Color.fromARGB(255, 231, 231, 192)),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 68, 68, 68),
      ),
      backgroundColor: const Color.fromARGB(255, 105, 105, 105),
      body: Column(
        children: const [
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
    );
  }
}
