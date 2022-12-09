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
            style: TextStyle(color: Color.fromARGB(255, 245, 245, 223)),
          ),
        ),
        backgroundColor: const Color.fromARGB(1000,65,65,65),
        
      ),
      backgroundColor: const Color.fromARGB(1000,140, 140, 140),
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
