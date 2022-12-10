import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class InformationProfile extends StatelessWidget {
  const InformationProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Prof = FirebaseFirestore.instance;
    return StreamBuilder(
      stream: Prof.doc("/Usuario/JTnFYE9D0rrCP09IU1Zb").snapshots(),
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
        final docSnap = snapshot.data!;
        snapshot.data!; //Extreure dades del AsyncSnapshot
        return Column(
          children: [
            Row(
              children: [
                const Text(
                  "Nickname: ",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                Text(
                  docSnap['Nickname'],
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Text(
                  "Name: ",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                Text(
                  docSnap['Nombre'],
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                const Padding(padding: EdgeInsets.only(left: 4)),
                Text(
                  docSnap['Apellido1'],
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                const Padding(padding: EdgeInsets.only(left: 4)),
                Text(
                  docSnap['Apellido2'],
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
