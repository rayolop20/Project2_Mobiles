import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:projecte2_mobiles/Models/Guardats.dart';
import 'package:projecte2_mobiles/Models/Searcher.dart';

class ListSearcher extends StatefulWidget {
  final Coleccions coleccions;
  const ListSearcher({super.key, required this.coleccions});

  @override
  State<ListSearcher> createState() => _ListSearcherState();
}

class _ListSearcherState extends State<ListSearcher> {
  void _afegeixLlibre() {
    final db = FirebaseFirestore.instance;
    if (widget.coleccions.saved == true) {
      db.collection("/Libreria/ocKGv4Qk3LQJultmTmvC/Guardats").add({
        'Name': widget.coleccions.name, //han de estar creats al firebase
        'Guardat': true,
      });
    }
    if (widget.coleccions.saved == false) {
      //db.collection("/Libreria/ocKGv4Qk3LQJultmTmvC/Guardats")
      //.doc("${widget.eguard.id}")
      //.delete();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 65, 65, 65),
        ),
        child: SizedBox(
          height: 100,
          child: GestureDetector(
            onTap: () {
              if (widget.coleccions.saved == false) {
                setState(
                    () => widget.coleccions.saved = !widget.coleccions.saved);
                widget.coleccions.guardat();
                _afegeixLlibre();
              } else if (widget.coleccions.saved == true) {
                setState(
                    () => widget.coleccions.saved = !widget.coleccions.saved);
                widget.coleccions.notGuardat();
                _afegeixLlibre();
              }
            },
            child: Container(
              decoration: BoxDecoration(color: Color.fromARGB(255, 65, 65, 65)),
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 55,
                    height: 55,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                  ),
                  Text(widget.coleccions.name),
                  Icon(
                    widget.coleccions.saved
                        ? Icons.turned_in
                        : Icons.turned_in_not,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
