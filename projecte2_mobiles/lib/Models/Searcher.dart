import 'package:cloud_firestore/cloud_firestore.dart';

class Coleccions {
  String id;
  String name;
  bool saved;

  Coleccions.fromfirestore(DocumentSnapshot<Map<String, dynamic>> doc)
      : id = doc.id,
        name = doc['Name'],
        saved = doc['Guardat'];

  bool get notFilaitzat => !saved;
  bool get Filaitzat => saved;
  get _ref => FirebaseFirestore.instance
      .doc("/Libreria/ocKGv4Qk3LQJultmTmvC/Total/$id");

  guardat() => _ref.update({'Guardat': true});
  notGuardat() => _ref.update({'Guardat': false});
}

Stream<List<Coleccions>> getColeccions() async* {
  final db = FirebaseFirestore.instance;
  final partitsRef = db.collection("/Libreria/ocKGv4Qk3LQJultmTmvC/Total");
  await for (final qsnap in partitsRef.snapshots()) {
    yield qsnap.docs.map(Coleccions.fromfirestore).toList().cast<Coleccions>();
  }
}
