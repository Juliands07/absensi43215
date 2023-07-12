import 'package:absensi43215/app/routes/app_pages.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewPasswordController extends GetxController {
  TextEditingController newPasswordController = TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;

  void newPassword() async {
    if (newPasswordController.text.isEmpty) {
      Get.snackbar(
        'Error',
        'Semua data harus diisi',
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    } else {
      try {
        if (newPasswordController.text != 'abc123') {
          await auth.currentUser!.updatePassword(newPasswordController.text);

          String email = auth.currentUser!.email.toString();
          await auth.signOut();
          await auth.signInWithEmailAndPassword(
              email: email, password: newPasswordController.text);

          Get.offAllNamed(Routes.HOME);
        } else {
          Get.snackbar(
            'Error',
            'Password tidak boleh password lama',
            snackPosition: SnackPosition.TOP,
            backgroundColor: Colors.red,
            colorText: Colors.white,
          );
        }
      } catch (e) {
        Get.snackbar(
          'Error',
          e.toString(),
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      }
    }
  }
}
