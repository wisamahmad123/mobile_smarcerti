import 'package:flutter/material.dart';

class BidangPage extends StatelessWidget {
  const BidangPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bidang Dosen'),
      ),
      body: const Center(
        child: Text('Ini adalah halaman Bidang Dosen'),
      ),
    );
  }
}
