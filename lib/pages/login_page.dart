import 'package:flutter/material.dart';
import '../widgets/login_form.dart'; // Perbaiki import untuk mengarah ke folder yang benar
import 'home_page.dart'; // Import halaman HomePage

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>(); // Form key untuk validasi

  // Fungsi login
  void _login(String nip, String password) {
    // Validasi form
    if (_formKey.currentState!.validate()) {
      // Jika validasi form berhasil
      if (nip == '2241' && password == '1234') {
        // Jika NIP dan password cocok
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomePage()),
        );
      } else {
        // Jika NIP atau password salah, tampilkan pesan kesalahan
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Invalid NIP or password')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 300, // Tinggi AppBar
        flexibleSpace: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipOval(
                child: Image(
                  image: AssetImage('assets/images/static.png'),
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 10), // Jarak antara gambar dan teks
              Text(
                'Welcome!',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5), // Jarak antara teks
              Text(
                'Please log in to your account',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14.0,
                  color: Color(0xFF6C6C6C),
                ),
              ),
            ],
          ),
        ),
      ),
      body: LoginForm(
        formKey: _formKey, // Mengirimkan GlobalKey ke LoginForm
        onLogin: _login, // Mengirimkan fungsi login sebagai parameter
      ),
    );
  }
}
