import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:projecte2_mobiles/Models/Guardats.dart';

class ListMarkers extends StatefulWidget {
  final ElementsGuardats eguardats;
  const ListMarkers({super.key, required this.eguardats});

  @override
  State<ListMarkers> createState() => _ListMarkersState();
}

class _ListMarkersState extends State<ListMarkers> {
  @override
  void _EliminarLlibre() {
    final db = FirebaseFirestore.instance;
    if (widget.eguardats.saved == false) {
      //Navigator.of(context).pop();
    }
  }

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
              if (widget.eguardats.saved == false) {
                debugPrint('si');
                setState(
                    () => widget.eguardats.saved = !widget.eguardats.saved);
                widget.eguardats.guardat();
              } else if (widget.eguardats.saved == true) {
                debugPrint('no');
                setState(
                    () => widget.eguardats.saved = !widget.eguardats.saved);
                widget.eguardats.notGuardat();
                _EliminarLlibre;
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
                  Text(widget.eguardats.name),
                  Icon(
                    widget.eguardats.saved
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
