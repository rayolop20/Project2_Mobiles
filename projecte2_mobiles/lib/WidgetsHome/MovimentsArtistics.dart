import 'package:flutter/material.dart';

class MovimentsArtistics extends StatefulWidget {
  const MovimentsArtistics({
    Key? key,
  }) : super(key: key);

  @override
  State<MovimentsArtistics> createState() => _MovimentsArtisticsState();
}

class _MovimentsArtisticsState extends State<MovimentsArtistics> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(1000, 65,65,65),
      
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            children: const [
              Text.rich(
                TextSpan(
                  text: "Moviments Artistics",
                  style: TextStyle(
                      color: Color.fromARGB(255, 245, 245, 223), fontSize: 18),
                ),
              ),
            ],
          ),
          const Padding(padding: EdgeInsets.only(top: 5)),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(232, 140, 140, 140),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              padding: const EdgeInsets.all(7),
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(1000, 65,65,65),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
