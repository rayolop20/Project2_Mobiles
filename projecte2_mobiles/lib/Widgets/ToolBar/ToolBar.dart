import 'package:flutter/material.dart';

class ToolBar extends StatefulWidget {
  final int state;
  const ToolBar({
    required this.state,
    Key? key,
  }) : super(key: key);

  @override
  State<ToolBar> createState() => _ToolBarState();
}

class _ToolBarState extends State<ToolBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 68, 68, 68),
        /*borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        ),*/
      ),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              child: Container(
                decoration: BoxDecoration(
                  color: (widget.state == 0)
                      ? const Color.fromARGB(255, 140, 140, 140)
                      : const Color.fromARGB(255, 68, 68, 68),
                  borderRadius: const BorderRadius.only(
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
              onTap: () {
                if (widget.state != 0) {
                  Navigator.of(context).pushNamed(
                    '/Home',
                  );
                }
              },
            ),
          ),
          Expanded(
            child: GestureDetector(
              child: Container(
                decoration: BoxDecoration(
                  color: (widget.state == 1)
                      ? const Color.fromARGB(255, 140, 140, 140)
                      : const Color.fromARGB(255, 68, 68, 68),
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
                 if (widget.state != 1) {
                Navigator.of(context).pushNamed(
                  '/Search',
                );
                 }
              },
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
