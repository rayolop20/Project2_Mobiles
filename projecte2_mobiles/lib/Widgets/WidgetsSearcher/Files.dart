import 'package:flutter/material.dart';
import 'package:projecte2_mobiles/Models/Searcher.dart';

class ListSearcher extends StatefulWidget {
  final Coleccions coleccions;
  const ListSearcher({super.key, required this.coleccions});

  @override
  State<ListSearcher> createState() => _ListSearcherState();
}

class _ListSearcherState extends State<ListSearcher> {
  bool guardat = false;
  @override
  _Guardar() {
    if (widget.coleccions.notFilaitzat) {
      setState(() => guardat = !guardat);
      widget.coleccions.Guardat();
    }
  }

  _NoGuardar() {
    if (widget.coleccions.Filaitzat) {
      setState(() => guardat = !guardat);
      widget.coleccions.NotGuardat();
    }
  }

  Widget build(BuildContext context) {
    final marked = widget.coleccions.saved;
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 65, 65, 65),
        ),
        child: SizedBox(
          height: 100,
          child: GestureDetector(
            onTap: marked ? _NoGuardar : _Guardar,
            child: Container(
              decoration: BoxDecoration(color: Color.fromARGB(255, 65, 65, 65)),
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 55,
                    height: 55,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                  ),
                  Text(widget.coleccions.name),
                  Icon(
                    (widget.coleccions.saved == true)
                        ? Icons.turned_in
                        : Icons.turned_in_not,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
