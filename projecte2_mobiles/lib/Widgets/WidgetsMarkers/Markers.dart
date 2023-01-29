import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:projecte2_mobiles/Models/Books.dart';
import 'package:projecte2_mobiles/Models/Guardats.dart';
import 'package:projecte2_mobiles/Windows/BookWindow.dart';

class ListMarkers extends StatefulWidget {
  final ElementsGuardats eguardats;

  const ListMarkers({super.key, required this.eguardats});

  @override
  State<ListMarkers> createState() => _ListMarkersState();
}

class _ListMarkersState extends State<ListMarkers> {
  @override
  bool saved = false;
  void _EliminarLlibre() {
    final db = FirebaseFirestore.instance;
    db
        .doc("/Libreria/ocKGv4Qk3LQJultmTmvC/Guardats/${widget.eguardats.id}")
        .delete();
  }

  Widget build(BuildContext context) {
    Books book = Books(
        title: '',
        description: '',
        author: '',
        imgUrl: '',
        imgWidth: 0,
        imgHeight: 0,
        linkUrl: '');
    return ListTile(
      onTap: () {
        book.title = widget.eguardats.name;
        book.description = widget.eguardats.description;
        book.author = widget.eguardats.autor;
        book.imgUrl = widget.eguardats.imageURL;
        book.linkUrl = widget.eguardats.linkURL;
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BookScreen(book: book),
          ),
        );
      },
      onLongPress: () {
        _EliminarLlibre();
      },
      title: Text(widget.eguardats.name),
      subtitle: Text(widget.eguardats.autor),
      textColor: const Color.fromARGB(255, 195, 195, 170),
      hoverColor: const Color.fromARGB(255, 48, 48, 49),
      trailing: const Text.rich(
        TextSpan(
          text: "click: abrir | Manten: guardar",
          style: TextStyle(
              color: Color.fromARGB(255, 245, 245, 223), fontSize: 12),
        ),
      ),
    );
  }
}
