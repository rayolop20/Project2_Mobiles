import 'package:flutter/material.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        child: Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 68, 68, 68),
          ),
          child: const Center(
            child: Icon(
              Icons.zoom_in,
              color: Color.fromARGB(255, 245, 245, 223),
              size: 30,
            ),
          ),
        ),
        onTap: () {
          Navigator.of(context).pushNamed(
            '/Search',
          );
        },
      ),
    );
  }
}
