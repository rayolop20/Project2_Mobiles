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
            Container(
              width: 500,
              height: 150,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/banner.png',
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const SizedBox(width: 10),
                Container(
                  width: 150,
                  height: 150,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(70),
                    ),
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/perfil.jpg',
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 40),
                Column(
                  children: [
                    Row(
                      children: [
                        const Text(
                          "Nickname: ",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 245, 245, 223),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          docSnap['Nickname'],
                          style: const TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 245, 245, 223),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const SizedBox(width: 35),
                        const Text(
                          "Name: ",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 245, 245, 223),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          docSnap['Nombre'],
                          style: const TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 245, 245, 223),
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(left: 4)),
                        Text(
                          docSnap['Apellido1'],
                          style: const TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 245, 245, 223),
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(left: 4)),
                        Text(
                          docSnap['Apellido2'],
                          style: const TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 245, 245, 223),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 30),
            const Text(
              'Description',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 245, 245, 223),
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(232, 140, 140, 140),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                padding: const EdgeInsets.all(7),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(1000, 65, 65, 65),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            const Text(
              'Recomendations',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 245, 245, 223),
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(232, 140, 140, 140),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                padding: const EdgeInsets.all(7),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(1000, 65, 65, 65),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
