import "package:cloud_firestore/cloud_firestore.dart";
import 'package:notebook/auth/nep.dart';

class DatabaseService {
  final String uid;
  DatabaseService({this.uid});

  final CollectionReference userprofileCollection =
      FirebaseFirestore.instance.collection('userprofilecollection');

  Future updateUserData(String name, String semester) async {
    return await userprofileCollection
        .doc(uid)
        .set({'name': name, 'semester': semester});
  }

  // List<Nep> _neplist(QuerySnapshot snapshot) {
  //   return snapshot.docs.map((doc) {
  //     return Nep(
  //         name: doc.get('name') ?? '', semester: doc.get('semester') ?? '');
  //   });
  // }

  // Stream<QuerySnapshot> get userprofilecollection {
  //   return userprofileCollection.snapshots().map(_nepl);
  // }

  Future getCurrentUserData() async {
    try {
      DocumentSnapshot datas = await userprofileCollection.doc(uid).get();
      String name = datas.get('Name');

      return name;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
