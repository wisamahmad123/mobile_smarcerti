import 'package:flutter/material.dart';

class DosenAktifPage extends StatelessWidget {
  const DosenAktifPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dosen Aktif'),
      ),
      body: const Center(
        child: Text('Ini adalah halaman Dosen Aktif'),
      ),
    );
  }
}
