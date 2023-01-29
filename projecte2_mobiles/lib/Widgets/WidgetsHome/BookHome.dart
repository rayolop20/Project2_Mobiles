import 'package:flutter/material.dart';
import 'package:projecte2_mobiles/Models/Books.dart';
import 'package:projecte2_mobiles/Windows/BookWindow.dart';

class BookHome extends StatelessWidget {
  const BookHome({
    Key? key,
    required this.book,
  }) : super(key: key);

  final Books book;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BookScreen(book: book),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            SizedBox(
              height: 120,
              width: 110,
              child: Image.network(book.imgUrl),
            ),
            const SizedBox(
              width: 10,
            ),
            Center(
              child: Column(
                children: [
                  Text(
                    book.title,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 245, 245, 223),
                        fontSize: 11),
                  ),
                  Text(
                    book.author,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 245, 245, 223),
                      fontSize: 11,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
