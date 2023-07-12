import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Login Page'),
          centerTitle: true,
        ),
        body: ListView(
          padding: const EdgeInsets.all(8.0),
          children: [
            const SizedBox(height: 20.0),
            TextFormField(
              autocorrect: false,
              controller: controller.emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20.0),
            TextFormField(
              autocorrect: false,
              obscureText: true,
              controller: controller.passwordController,
              decoration: const InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                controller.login();
              },
              child: const Text('Login'),
            ),
            const SizedBox(height: 20.0),
            TextButton(
              onPressed: () {
                // Get.toNamed(Routes.REGISTER);
              },
              child: const Text('Lupa Password?'),
            ),
          ],
        ));
  }
}
