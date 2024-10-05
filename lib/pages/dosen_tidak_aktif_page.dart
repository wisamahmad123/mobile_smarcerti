import 'package:flutter/material.dart';

class DosenTidakAktifPage extends StatelessWidget {
  const DosenTidakAktifPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dosen Tidak Aktif'),
      ),
      body: const Center(
        child: Text('Ini adalah halaman Dosen Tidak Aktif'),
      ),
    );
  }
}
