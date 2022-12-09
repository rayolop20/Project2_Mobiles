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
        borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                topLeft: Radius.circular(30),
               ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 140, 140, 140),
               borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                topLeft: Radius.circular(30),
               ),
              ),
              child: const Center(
                child: Icon(
                  Icons.home,
                  color: Color.fromARGB(255, 245, 245, 223),
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
                  color: Color.fromARGB(255, 245, 245, 223),
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
                  color: Color.fromARGB(255, 245, 245, 223),
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
