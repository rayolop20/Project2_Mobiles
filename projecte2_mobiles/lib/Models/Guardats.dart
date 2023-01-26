import 'package:cloud_firestore/cloud_firestore.dart';

class ElementsGuardats {
  String id;
  String name;
  bool saved;
  //DateTime started;

  ElementsGuardats.fromfirestore(DocumentSnapshot<Map<String, dynamic>> doc)
      : id = doc.id,
        name = doc['Name'],
        saved = doc['Guardat'];
  //started = (doc['started'] as Timestamp).toDate();

  bool get notFilaitzat => !saved;

  get _ref => FirebaseFirestore.instance
      .doc("/Libreria/ocKGv4Qk3LQJultmTmvC/Guardats/$id");

  /*incrA(int n) {
    if (golsA + n >= 0) {
      _ref.update({'golsA': golsA + n});
    }
  }

  incrB(int n) {
    if (golsB + n >= 0) {
      _ref.update({'golsA': golsB + n});
    }
  }*/

  finalitza() => _ref.update({'Guardat': true});
}

Stream<List<ElementsGuardats>> getColeccions() async* {
  final db = FirebaseFirestore.instance;
  final partitsRef = db.collection("/Libreria/ocKGv4Qk3LQJultmTmvC/Guardats");
  await for (final qsnap in partitsRef.snapshots()) {
    yield qsnap.docs
        .map(ElementsGuardats.fromfirestore)
        .toList()
        .cast<ElementsGuardats>();
  }
}
