import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/new_password_controller.dart';

class NewPasswordView extends GetView<NewPasswordController> {
  const NewPasswordView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('NewPasswordView'),
          centerTitle: true,
        ),
        body: ListView(
          padding: const EdgeInsets.all(20.0),
          children: [
            const SizedBox(height: 20.0),
            TextFormField(
              autocorrect: false,
              obscureText: true,
              controller: controller.newPasswordController,
              decoration: const InputDecoration(
                labelText: 'New Password',
                hintText: 'Enter new password',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                controller.newPassword();
              },
              child: const Text('New Password'),
            ),
          ],
        ));
  }
}
