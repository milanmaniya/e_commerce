import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

FirebaseAuth firebaseAuth = FirebaseAuth.instance;

FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

User? user = firebaseAuth.currentUser;

//collections
const usersCollections = "users";
const productsCollections = "products";
