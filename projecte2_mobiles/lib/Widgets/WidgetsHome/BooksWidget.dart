import 'package:flutter/material.dart';
import 'package:projecte2_mobiles/Models/Books.dart';

class BookWidget extends StatelessWidget {
  const BookWidget({
    Key? key,
    required this.book,
  }) : super(key: key);

  final Books book;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        splashColor: Colors.blueGrey,
        onTap: () {},
        child: Container(
          height: book.imgHeight as double,
          width: book.imgWidth as double,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
          child: Image.network(book.imgUrl),
        ));
  }
}
