// widget widgets/pimpimpinan_bottom_nav_bar.dart
import 'package:flutter/material.dart';
import '../pages/home_page.dart'; // Import halaman Home
import '../pages/history_page.dart'; // Import halaman History
import '../pages/profile_page.dart'; // Import halaman Profile

class PimpinanBottomNavBar extends StatefulWidget {
  const PimpinanBottomNavBar({super.key});

  @override
  _PimpinanBottomNavBarState createState() => _PimpinanBottomNavBarState();
}

class _PimpinanBottomNavBarState extends State<PimpinanBottomNavBar> {
  int _selectedIndex = 0; // Index halaman yang dipilih

  // Daftar halaman yang akan dinavigasi
  final List<Widget> _pages = [
    const HomePage(),
    const HistoryPage(),
    const ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Perbarui index yang dipilih
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex], // Tampilkan halaman yang sesuai
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 35),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history, size: 35),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, size: 35),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex, // Indeks yang aktif
        onTap: _onItemTapped, // Panggil fungsi saat item diklik
        selectedItemColor:
            const Color.fromARGB(255, 239, 84, 40), // Warna item yang dipilih
      ),
    );
  }
}
