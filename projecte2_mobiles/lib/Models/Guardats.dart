import 'package:cloud_firestore/cloud_firestore.dart';

class ElementsGuardats {
  String id;
  String name;
  bool saved;

  ElementsGuardats.fromfirestore(DocumentSnapshot<Map<String, dynamic>> doc)
      : id = doc.id,
        name = doc['Name'],
        saved = doc['Guardat'];

  bool get notFilaitzat => !saved;

  get _ref => FirebaseFirestore.instance
      .doc("/Libreria/ocKGv4Qk3LQJultmTmvC/Guardats/$id");

  finalitza() => _ref.update({'Guardat': true});
  guardat() => _ref.update({'Guardat': true});
  notGuardat() => _ref.update({'Guardat': false});
}

Stream<List<ElementsGuardats>> getMColeccions() async* {
  final db = FirebaseFirestore.instance;
  final partitsRef = db.collection("/Libreria/ocKGv4Qk3LQJultmTmvC/Guardats");
  await for (final qsnap in partitsRef.snapshots()) {
    yield qsnap.docs
        .map(ElementsGuardats.fromfirestore)
        .toList()
        .cast<ElementsGuardats>();
  }
}
