import 'package:flutter/material.dart';

class ToolBar extends StatelessWidget {
  const ToolBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 68, 68, 68),
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 122, 116, 116),
              ),
              child: const Center(
                child: Icon(
                  Icons.home,
                  color: Color.fromARGB(255, 231, 231, 192),
                  size: 30,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 68, 68, 68),
              ),
              child: const Center(
                child: Icon(
                  Icons.zoom_in,
                  color: Color.fromARGB(255, 231, 231, 192),
                  size: 30,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 68, 68, 68),
              ),
              child: const Center(
                child: Icon(
                  Icons.turned_in,
                  color: Color.fromARGB(255, 231, 231, 192),
                  size: 30,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
