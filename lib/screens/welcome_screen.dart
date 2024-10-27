import 'package:flutter/material.dart';
import 'package:halaman_login/screens/login_screen.dart';
import 'package:halaman_login/screens/menu_screen.dart';
import 'package:halaman_login/widgets/custom_scaffold.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start, // Posisikan konten di atas
        crossAxisAlignment: CrossAxisAlignment.center, // Atur ke tengah secara horizontal
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 16.0,
              horizontal: 48.0,
            ),
            child: RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: 'Welcome Back!\n',
                    style: TextStyle(
                      fontSize: 45.0,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  TextSpan(
                    text: '\nEnter personal details to your employee account',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20), // Jarak antara teks dan tombol
          ElevatedButton(
            onPressed: () {
              // Navigasi ke halaman berikutnya
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginScreen()),
              );
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            ),
            child: const Text(
              'Log in',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
