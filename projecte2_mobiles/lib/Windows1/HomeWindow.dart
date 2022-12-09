import 'package:cloud_firestore/cloud_firestore.dart';
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
      /*appBar: AppBar(
        title: const Text.rich(
          TextSpan(
            text: "Application",
            style: TextStyle(color: Color.fromARGB(255, 231, 231, 192)),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 68, 68, 68),
      ),*/
      backgroundColor: const Color.fromARGB(255, 105, 105, 105),
      body: Column(
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
    );
  }
}

class User extends StatelessWidget {
  const User({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final db = FirebaseFirestore.instance;
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 68, 68, 68),
      ),
      child: StreamBuilder(
        stream: db.doc("/Usuario/JTnFYE9D0rrCP09IU1Zb").snapshots(),
        builder: (
          BuildContext context,
          AsyncSnapshot<DocumentSnapshot<Map<String, dynamic>>> snapshot,
        ) {
          //1. mirar si hi ha hagut errors
          if (snapshot.hasError) {
            return ErrorWidget(snapshot.error.toString());
          }
          //si encara no tinc dades
          if (!snapshot.hasData) {
            return const CircularProgressIndicator();
          }
          final docSnap = snapshot.data!; //Extreure dades del AsyncSnapshot
          return Text(
            docSnap['Nombre'],
            style: const TextStyle(fontSize: 24),
          );
        },
      ),
    );
  }
}
