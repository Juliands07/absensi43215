import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_pegawai_controller.dart';

class AddPegawaiView extends GetView<AddPegawaiController> {
  const AddPegawaiView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Tambah Pegawai'),
          centerTitle: true,
        ),
        body: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            TextField(
              autocorrect: false,
              controller: controller.nipController,
              decoration: const InputDecoration(
                labelText: 'NIP',
                hintText: 'Masukkan NIP',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              autocorrect: false,
              controller: controller.namaController,
              decoration: const InputDecoration(
                labelText: 'Nama',
                hintText: 'Masukkan Nama',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              autocorrect: false,
              controller: controller.emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
                hintText: 'Masukkan Email',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                controller.addEmployee();
              },
              child: const Text('Simpan'),
            ),
          ],
        ));
  }
}
