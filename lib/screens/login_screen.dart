import 'package:flutter/material.dart';
import 'package:halaman_login/screens/menu_screen.dart';
import 'package:halaman_login/widgets/custom_scaffold.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
  
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Container(
        width: 400,
        height: 400,
        padding: const EdgeInsets.all(16.0),
        margin: const EdgeInsets.symmetric(horizontal: 24.0),
        decoration: BoxDecoration(
          color: const Color.fromARGB(237, 255, 255, 255),
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 8.0,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
               const Padding(
                  padding: EdgeInsets.only(top: 20.0, bottom: 20.0), // Menambahkan margin atas dan bawah
                  child: Text(
                    'Login to Your Account',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 60, 61, 65),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),

              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                    return 'Please enter a valid email';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  if (value.length < 6) {
                    return 'Password must be at least 6 characters';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                   if (_formKey.currentState!.validate()) {
                    // Jika form valid, lakukan proses login
                    String email = _emailController.text;
                    String password = _passwordController.text;

                    // Navigasi ke halaman MenuScreen dengan mengoper email
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MenuScreen(email: email),
                      ),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(237, 255, 255, 255), // Mengubah warna latar belakang menjadi ungu
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
  ),
                child: const Text(
                  'Login',
                  style: TextStyle(fontSize: 20,
                  color: Color.fromARGB(255, 102, 9, 97),
                  
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
