import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce/utils/constants/firebase_const.dart';

class FirestoreServices {
  // get users data
  static getUser({required String uid}) {
    return FirebaseFirestore.instance
        .collection(usersCollections)
        .where('id', isEqualTo: uid)
        .snapshots();
  }

  static getProducts(category) {
    return FirebaseFirestore.instance
        .collection(productsCollections)
        .where('p_category', isEqualTo: category)
        .snapshots();
  }
}
