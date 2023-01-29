import 'package:flutter/material.dart';
import 'package:projecte2_mobiles/Models/Books.dart';

class BookScreen extends StatelessWidget {
  const BookScreen({
    required this.book,
    Key? key,
  }) : super(key: key);
  final Books book;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(1000, 65, 65, 65),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(1000, 65, 65, 65),
        title: const Text("Book"),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Center(
            child: Text(
              book.title,
              style: const TextStyle(
                  fontSize: 30,
                  color: Color.fromARGB(255, 153, 188, 205),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            book.author,
            style: const TextStyle(
              fontSize: 25,
              color: Color.fromARGB(255, 138, 158, 169),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Image.network(book.imgUrl),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(232, 140, 140, 140),
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              padding: const EdgeInsets.all(7),
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(1000, 65, 65, 65),
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    const Text(
                      "Description:",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 187, 203, 214),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      book.description,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 138, 158, 169),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Amazon link:",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 187, 203, 214),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      book.linkUrl,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 138, 158, 169),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
