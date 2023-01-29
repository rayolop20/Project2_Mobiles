//import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:projecte2_mobiles/Models/Books.dart';
import 'package:projecte2_mobiles/Windows/BookWindow.dart';

class BookWidget extends StatefulWidget {
  const BookWidget({
    Key? key,
    required this.book,
  }) : super(key: key);

  final Books book;

  @override
  State<BookWidget> createState() => _BookWidgetState();
}

class _BookWidgetState extends State<BookWidget> {
  bool saved = false;

  void _afegeixLlibre() {
    final db = FirebaseFirestore.instance;
    db.collection("/Libreria/ocKGv4Qk3LQJultmTmvC/Guardats").add({
      'Name': widget.book.title,
      'Autor': widget.book.author, //han de estar creats al firebase
      'Description': widget.book.description,
      'imgUrl': widget.book.imgUrl,
      'linkUrl': widget.book.linkUrl,
    });
  }

  @override
  Widget build(BuildContext context) {
    const Padding(padding: EdgeInsets.only(top: 5));
    return ListTile(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BookScreen(book: widget.book),
          ),
        );
      },
      onLongPress: () {
        if (saved == false) {
          setState(() => saved = !saved);
          _afegeixLlibre();
        } else if (saved == true) {
          setState(() => saved = !saved);
        }
      },
      title: Text(widget.book.title),
      subtitle: Text(widget.book.author),
      textColor: const Color.fromARGB(255, 195, 195, 170),
      hoverColor: const Color.fromARGB(255, 48, 48, 49),
      trailing: const Text.rich(
        TextSpan(
          text: "Pulsar para abrir | Manten Pulsado para guardar",
          style: TextStyle(
            color: Color.fromARGB(255, 245, 245, 223),
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
