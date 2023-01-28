import 'package:flutter/material.dart';
import 'package:projecte2_mobiles/Models/Books.dart';
import 'package:projecte2_mobiles/Windows/BookWindow.dart';

class BookWidget extends StatelessWidget {
  const BookWidget({
    Key? key,
    required this.book,
  }) : super(key: key);

  final Books book;

  @override
  Widget build(BuildContext context) {
    const Padding(padding: EdgeInsets.only(top: 5));
    return ListTile(
      onTap: () {
         Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>  BookScreen(book:book),
        
          ),
          );
      },
      title: Text(book.title),
      subtitle: Text(book.author),
      textColor: const Color.fromARGB(255, 195, 195, 170),
      hoverColor: Color.fromARGB(255, 48, 48, 49),
    );
    
  }
}
