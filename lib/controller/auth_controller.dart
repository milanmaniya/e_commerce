// ignore_for_file: use_build_context_synchronously
import 'package:e_commerce/utils/constants/consts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthContoller extends GetxController {
  Future<UserCredential?> loginMethod(
      {required String email,
      required String password,
      required BuildContext context}) async {
    UserCredential? userCredential;

    try {
      userCredential = await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      return userCredential;
    } on FirebaseAuthException catch (e) {
      VxToast.show(context, msg: e.toString());

      return null;
    }
  }

  Future<UserCredential?> signUpMethod(
      {required String email,
      required String password,
      required BuildContext context}) async {
    UserCredential? userCredential;

    try {
      userCredential = await firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      return userCredential;
    } on FirebaseAuthException catch (e) {
      VxToast.show(context, msg: e.toString());

      return null;
    }
  }

  // Storing user data

  storeUserData({
    required String name,
    required String password,
    required String email,
    required String image,
  }) {
    firebaseFirestore.collection(usersCollections).doc(user!.uid).set({
      'name': name,
      'password': password,
      'email': email,
      'image': '',
    });
  }

  //signout

  signOutMethod(context) async {
    try {
      await firebaseAuth.signOut();
    } catch (e) {
      VxToast.show(context, msg: e.toString());
    }
  }
}
