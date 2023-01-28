import 'package:cloud_firestore/cloud_firestore.dart';

class ElementsGuardats {
  String id;
  String name;
  String autor;
  String description;
  String imageURL;
  String linkURL;

  ElementsGuardats.fromfirestore(DocumentSnapshot<Map<String, dynamic>> doc)
      : id = doc.id,
        name = doc['Name'],
        autor = doc['Autor'],
        description = doc['Description'],
        imageURL = doc['imgUrl'],
        linkURL = doc['linkUrl'];

  get _ref => FirebaseFirestore.instance
      .doc("/Libreria/ocKGv4Qk3LQJultmTmvC/Guardats/$id");
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
