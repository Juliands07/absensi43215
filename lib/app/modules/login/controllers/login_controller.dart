import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  FirebaseAuth auth = FirebaseAuth.instance;

  void login() async {
    if (emailController.text.isEmpty || passwordController.text.isEmpty) {
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
            await auth.signInWithEmailAndPassword(
          email: emailController.text,
          password: passwordController.text,
        );

        print(userCredential);

        if (userCredential.user != null) {
          if (userCredential.user!.emailVerified) {
            if (passwordController.text == 'abc123') {
              Get.offAllNamed(Routes.NEW_PASSWORD);
            } else {
              Get.offAllNamed(Routes.HOME);
            }
          } else {
            Get.defaultDialog(
              title: 'Error',
              middleText: 'Email belum diverifikasi',
              textConfirm: 'Kirim ulang',
              confirmTextColor: Colors.white,
              onConfirm: () async {
                try {
                  await userCredential.user!.sendEmailVerification();
                  Get.back();
                  Get.snackbar(
                    'Berhasil',
                    'Email verifikasi berhasil dikirim, silahkan cek email anda',
                    snackPosition: SnackPosition.TOP,
                    backgroundColor: Colors.green,
                    colorText: Colors.white,
                  );
                } catch (e) {
                  Get.snackbar(
                    'Terjadi kesalahan',
                    'terlalu banyak permintaan,silahkan coba lagi nanti, atau hubungi admin',
                    snackPosition: SnackPosition.TOP,
                    backgroundColor: Colors.red,
                    colorText: Colors.white,
                  );
                }
              },
              onCancel: () => Get.back(),
            );
          }
        }
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          Get.snackbar(
            'Error',
            'User tidak ditemukan',
            snackPosition: SnackPosition.TOP,
            backgroundColor: Colors.red,
            colorText: Colors.white,
          );
        } else if (e.code == 'wrong-password') {
          Get.snackbar(
            'Error',
            'Password salah',
            snackPosition: SnackPosition.TOP,
            backgroundColor: Colors.red,
            colorText: Colors.white,
          );
        }
      }
    }
  }
}
