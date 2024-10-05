

import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  final GlobalKey<FormState> formKey; // Key untuk form
  final Function(String, String) onLogin; // Callback untuk login

  const LoginForm({Key? key, required this.formKey, required this.onLogin})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController nipController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return Form(
      key: formKey, // Assign key to form
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Input NIP
            TextFormField(
              controller: nipController, // Controller untuk NIP
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'NIP',
                hintText: 'Masukkan NIP',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Masukkan NIP yang sesuai';
                }
                return null; // Valid
              },
            ),
            const SizedBox(height: 20),

            // Input Password
            TextFormField(
              controller: passwordController, // Controller untuk Password
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Password',
                hintText: 'Masukkan Password',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Masukkan password yang sesuai';
                }
                return null; // Valid
              },
            ),

            const SizedBox(height: 20), // Tambahkan jarak di bawah TextField

            // Tombol Login
            SizedBox(
              width: 320,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  // if (formKey.currentState!.validate()) {
                  //   onLogin(nipController.text, passwordController.text);
                  // }
                  onLogin(nipController.text, passwordController.text);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
