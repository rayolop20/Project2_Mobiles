import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

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
      child: Row(
        children: [
          GestureDetector(
            child: Container(
              width: 180,
              height: 60,
              //color: Colors.amber, //comprovador d'on es la box
              child: Row(
                children: [
                  const Padding(padding: EdgeInsets.only(left: 12)),
                  Container(
                    width: 55,
                    height: 55,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                  ),
                  const Padding(padding: EdgeInsets.only(left: 12)),
                  StreamBuilder(
                    stream: db.doc("/Usuario/JTnFYE9D0rrCP09IU1Zb").snapshots(),
                    builder: (
                      BuildContext context,
                      AsyncSnapshot<DocumentSnapshot<Map<String, dynamic>>>
                          snapshot,
                    ) {
                      //1. mirar si hi ha hagut errors
                      if (snapshot.hasError) {
                        return ErrorWidget(snapshot.error.toString());
                      }
                      //si encara no tinc dades
                      if (!snapshot.hasData) {
                        return const CircularProgressIndicator();
                      }
                      final docSnap = snapshot.data!;
                      snapshot.data!; //Extreure dades del AsyncSnapshot
                      return Text(
                        docSnap['Nickname'],
                        style: const TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 231, 231, 192),
                        ),
                        //selectionColor: Color.fromARGB(255, 68, 68, 68),
                      );
                    },
                  ),
                ],
              ),
            ),
            onTap: () {
              Navigator.of(context).pushNamed(
                '/Profile',
              );
            },
          ),
        ],
      ),
    );
  }
}
