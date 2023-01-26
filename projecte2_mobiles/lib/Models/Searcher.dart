import 'package:cloud_firestore/cloud_firestore.dart';

class Coleccions {
  String id;
  String name;
  bool saved;
  //DateTime started;

  Coleccions.fromfirestore(DocumentSnapshot<Map<String, dynamic>> doc)
      : id = doc.id,
        name = doc['Name'],
        saved = doc['Guardat'];
  //started = (doc['started'] as Timestamp).toDate();

  bool get notFilaitzat => !saved;
  bool get Filaitzat => saved;
  get _ref => FirebaseFirestore.instance
      .doc("/Libreria/ocKGv4Qk3LQJultmTmvC/Total/$id");

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

  Guardat() => _ref.update({'Guardat': true});
  NotGuardat() => _ref.update({'Guardat': true});
}

Stream<List<Coleccions>> getColeccions() async* {
  final db = FirebaseFirestore.instance;
  final partitsRef = db.collection("/Libreria/ocKGv4Qk3LQJultmTmvC/Total");
  await for (final qsnap in partitsRef.snapshots()) {
    yield qsnap.docs.map(Coleccions.fromfirestore).toList().cast<Coleccions>();
  }
}
