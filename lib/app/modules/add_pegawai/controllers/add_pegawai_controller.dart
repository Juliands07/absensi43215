import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AddPegawaiController extends GetxController {
  TextEditingController nipController = TextEditingController();
  TextEditingController namaController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  void addEmployee() async {
    // print('Add Employee');
    if (nipController.text.isEmpty ||
        namaController.text.isEmpty ||
        emailController.text.isEmpty) {
      Get.snackbar(
        'Error',
        'Semua data harus diisi',
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    } else {
      try {
        final UserCredential userCredential =
            await auth.createUserWithEmailAndPassword(
          email: emailController.text,
          password: "abc123",
        );

        print(userCredential);

        if (userCredential.user != null) {
          String uid = userCredential.user!.uid;
          await firestore.collection('pegawai').doc(uid).set({
            'nip': nipController.text,
            'nama': namaController.text,
            'email': emailController.text,
            'uid': uid,
            'createdAt': DateTime.now().millisecondsSinceEpoch.toString(),
          });
        }
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          Get.snackbar(
            'Error',
            'Password terlalu lemah',
            snackPosition: SnackPosition.TOP,
            backgroundColor: Colors.red,
            colorText: Colors.white,
          );
        } else if (e.code == 'email-already-in-use') {
          Get.snackbar(
            'Error',
            'Email sudah digunakan',
            snackPosition: SnackPosition.TOP,
            backgroundColor: Colors.red,
            colorText: Colors.white,
          );
        }
      } catch (e) {
        Get.snackbar(
          'Tidak dapat penambahan data pegawai',
          e.toString(),
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      }
      Get.snackbar(
        'Success',
        'Data berhasil disimpan',
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );
    }
  }
}
