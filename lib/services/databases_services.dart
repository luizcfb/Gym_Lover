import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseServices {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final String path;
  late CollectionReference<Map<String, dynamic>> ref;

  DatabaseServices(this.path) {
    ref = _db.collection(path);
  }

  Future<QuerySnapshot<Map<String, dynamic>>> getDataCollection() {
    return ref.get();
  }

  Stream<QuerySnapshot> streamDataCollection() {
    return ref.snapshots();
  }

  Future<DocumentSnapshot> getDocumentById(String id) {
    return ref.doc(id).get();
  }

  Future<void> removeDocument(String id) {
    return ref.doc(id).delete();
  }

  Future<void> addDocument(Map<String, dynamic> data) {
    return ref.doc(data["id"].toString()).set(data);
  }

  Future<void> updateDocument(Map<String, Object?> data, String id) {
    return ref.doc(id).update(data);
  }
}
